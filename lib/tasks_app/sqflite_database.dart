import 'package:sqflite/sqflite.dart';

late Database database;

createDatabase() async {
  database = await openDatabase(
    'demo.db',
    version: 1,
    onCreate: (db, version) async {
      await db
          .execute(
              'CREATE TABLE Task (id INTEGER PRIMARY KEY, task TEXT, time TEXT, date TEXT, status TEXT)')
          .then((value) => print('created'))
          .catchError((error) {
        print(error.toString());
      });
    },
    onOpen: (db) {
      print('opened');
      getDatabase(db);
    },
  );
}

insertIntoDatabase(String task, String time, String date) async {
  await database.transaction((txn) async {
    await txn
        .rawInsert(
            'INSERT INTO Task(task, time, date,status) VALUES("$task", "$time", "$date","new")')
        .then((value) {
      print('inserted $value');
      getDatabase(database);
    }).catchError((error) {
      print(error.toString());
    });
  });
}

List<Map> tasks = [];
getDatabase(database) async {
  tasks = await database.rawQuery('SELECT * FROM Task').then((value) {
    print(value);
    return value;
  }).catchError((error) {
    print(error.toString());
  });
}
