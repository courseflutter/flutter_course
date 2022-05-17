import 'package:flutter/material.dart';
import 'package:flutter_application_4/tasks_app/archivedtasks.dart';
import 'package:flutter_application_4/tasks_app/cubit&states/cubit.dart';
import 'package:flutter_application_4/tasks_app/cubit&states/states.dart';
import 'package:flutter_application_4/tasks_app/donetasks_screen.dart';
import 'package:flutter_application_4/tasks_app/sqflite_database.dart';
import 'package:flutter_application_4/tasks_app/tasks_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  List titles = ['Tasks', 'DoneTasks', 'ArchivedTasks'];
  var taskController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskCubit()..createDatabase(),
      child: BlocConsumer<TaskCubit, TaskStates>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = TaskCubit().get(context);
            return Scaffold(
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  openDialouge(context, cubit);
                },
              ),
              appBar: AppBar(
                title: Text('${titles[cubit.currentIndex]}'),
              ),
              body: cubit.screens[cubit.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                onTap: (index) {
                  cubit.changeNavbar(index);
                },
                currentIndex: cubit.currentIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.task), label: 'Tasks'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.done), label: 'Done'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.archive_rounded), label: 'Archived')
                ],
              ),
            );
          }),
    );
  }

  openDialouge(context, cubit) => showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          title: Text('Add Task'),
          children: [
            Form(
              key: formkey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please put your task';
                      }
                    },
                    controller: taskController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Task'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please put your time';
                      }
                    },
                    controller: timeController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Time'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please put your date';
                      }
                    },
                    controller: dateController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Date'),
                  ),
                  TextButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          cubit.insertIntoDatabase(taskController.text,
                              timeController.text, dateController.text);
                          Navigator.pop(context);
                          taskController.text = '';
                          timeController.text = '';
                          dateController.text = '';
                        }
                      },
                      child: Text('Add')),
                ],
              ),
            )
          ],
          contentPadding: EdgeInsets.all(12),
        ),
      );
}
