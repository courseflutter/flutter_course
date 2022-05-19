import 'package:buildcondition/buildcondition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/tasks_app/cubit&states/cubit.dart';
import 'package:flutter_application_4/tasks_app/cubit&states/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components.dart';

class ArchivedScreen extends StatelessWidget {
  const ArchivedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskCubit, TaskStates>(
      builder: (context, state) {
        var cubit = TaskCubit().get(context);
        return BuildCondition(
          condition: cubit.archivedtask != 0,
          builder: (context) => ListView.separated(
              itemBuilder: (context, index) =>
                  taskBuilder(cubit.archivedtask[index], context),
              separatorBuilder: (context, index) => Divider(),
              itemCount: cubit.archivedtask.length),
        );
      },
      listener: (context, state) {},
    );
  }
}
