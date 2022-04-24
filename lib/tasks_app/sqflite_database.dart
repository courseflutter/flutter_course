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

insertIntoDatabase() async {
  await database.transaction((txn) async {
    await txn
        .rawInsert(
            'INSERT INTO Task(task, time, date,status) VALUES("go to gym", "12:56", "20/4/2022","new")')
        .then((value) => print('inserted $value'))
        .catchError((error) {
      print(error.toString());
    });
  });
}

getDatabase(database) async {
  List<Map> tasks = await database.rawQuery('SELECT * FROM Task').then((value) {
    print(value);
    return value;
  }).catchError((error) {
    print(error.toString());
  });
}
