import 'package:flutter/material.dart';
import 'package:flutter_application_4/tasks_app/sqflite_database.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => taskBuilder(tasks[index]),
        separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
        itemCount: tasks.length);
  }

  Widget taskBuilder(model) => ListTile(
        leading: CircleAvatar(
          radius: 25,
          child: Text(
            '${model['id']}',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        title: Text(
          '${model['task']}',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        subtitle: Text('${model['date']}'),
        trailing: Text('${model['time']}'),
      );
}
