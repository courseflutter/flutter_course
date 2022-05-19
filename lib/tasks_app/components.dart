import 'package:flutter/material.dart';
import 'package:flutter_application_4/tasks_app/cubit&states/cubit.dart';

Widget taskBuilder(
  model,
  context,
) =>
    Dismissible(
      onDismissed: (direction) {
        TaskCubit().get(context).updateTasks(
            status:
                direction == DismissDirection.startToEnd ? 'done' : 'archive',
            id: model['id']);
      },
      background: Container(
        padding: EdgeInsets.only(left: 8),
        alignment: Alignment.centerLeft,
        child: Icon(Icons.done),
        color: Colors.green,
      ),
      secondaryBackground: Container(
        padding: EdgeInsets.only(right: 8),
        alignment: Alignment.centerRight,
        child: Icon(Icons.archive),
        color: Colors.blue,
      ),
      key: GlobalKey(),
      child: ListTile(
        leading: CircleAvatar(
            radius: 25,
            child: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                TaskCubit().get(context).deleteTask(model['id']);
              },
            )),
        title: Text(
          '${model['task']}',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        subtitle: Text('${model['date']}'),
        trailing: Text(
          '${model['time']}',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
    );
