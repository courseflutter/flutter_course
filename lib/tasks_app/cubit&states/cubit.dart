import 'package:bloc/bloc.dart';
import 'package:flutter_application_4/tasks_app/cubit&states/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

import '../archivedtasks.dart';
import '../donetasks_screen.dart';
import '../tasks_screen.dart';

class TaskCubit extends Cubit<TaskStates> {
  TaskCubit() : super(TaskInitState());

  TaskCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List screens = [TasksScreen(), DoneScreen(), ArchivedScreen()];

  changeNavbar(index) {
    currentIndex = index;
    emit(TaskChangeNavbar());
  }

  late Database database;

  createDatabase() async {
    database = await openDatabase(
      'demo.db',
      version: 1,
      onCreate: (db, version) async {
        await db
            .execute(
                'CREATE TABLE Task (id INTEGER PRIMARY KEY, task TEXT, time TEXT, date TEXT, status TEXT)')
            .then((value) {
          print('created');
          emit(TaskCreateDatabaseState());
        }).catchError((error) {
          print(error.toString());
        });
      },
      onOpen: (db) {
        print('opened');
        getDatabase(database: db);
      },
    );
  }

  insertIntoDatabase(String task, String time, String date) async {
    await database.transaction((txn) async {
      await txn
          .rawInsert(
              'INSERT INTO Task(task, time, date,status) VALUES("$task", "$time", "$date","done")')
          .then((value) {
        print('inserted $value');
        getDatabase(database: database);
        emit(TaskInsertDatabaseState());
      }).catchError((error) {
        print(error.toString());
      });
    });
  }

  List<Map> task = [];
  List donetask = [];
  List? archivedtask;
  getDatabase({database}) async {
    List<Map> tasks =
        await database.rawQuery('SELECT * FROM Task').then((value) {
      print(value);
      task = [];
      value.forEach((element) {
        if (element['status'] == 'new') {
          task.add(element);
        }
        if (element['status'] == 'done') {
          donetask.add(element);
        } else {
          archivedtask?.add(element);
        }
      });
      emit(TaskGetDatabaseState());
      return value;
    }).catchError((error) {
      print(error.toString());
    });
  }
}
