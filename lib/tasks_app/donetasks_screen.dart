import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/tasks_app/components.dart';
import 'package:flutter_application_4/tasks_app/cubit&states/cubit.dart';
import 'package:flutter_application_4/tasks_app/cubit&states/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = TaskCubit().get(context);
    return BlocConsumer<TaskCubit, TaskStates>(
      builder: (context, state) {
        return BuildCondition(
          condition: cubit.donetask != 0,
          builder: (context) => ListView.separated(
              itemBuilder: (context, index) =>
                  taskBuilder(cubit.donetask[index], context),
              separatorBuilder: (context, index) => Divider(),
              itemCount: cubit.donetask.length),
        );
      },
      listener: (context, state) {},
    );
  }
}
