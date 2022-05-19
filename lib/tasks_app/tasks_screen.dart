import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/tasks_app/cubit&states/cubit.dart';
import 'package:flutter_application_4/tasks_app/cubit&states/states.dart';
import 'package:flutter_application_4/tasks_app/sqflite_database.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskCubit, TaskStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = TaskCubit().get(context);
          return BuildCondition(
            condition: cubit.task.length != 0,
            builder: (context) => ListView.separated(
                itemBuilder: (context, index) =>
                    taskBuilder(cubit.task[index], context),
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: cubit.task.length),
            fallback: (context) => Center(
              child: CircularProgressIndicator(),
            ),
          );
        });
  }
}
