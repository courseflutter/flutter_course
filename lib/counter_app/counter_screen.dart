import 'package:flutter/material.dart';
import 'package:flutter_application_4/counter_app/cubit&states/cubit.dart';
import 'package:flutter_application_4/counter_app/cubit&states/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
          listener: (context, state) {},
          builder: (context, state) {
            int counter = CounterCubit().get(context).counter;
            var cubit = CounterCubit().get(context);
            return Scaffold(
              body: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            cubit.minusCounter();
                          },
                          child: Text(
                            'Minus',
                            style: TextStyle(fontSize: 20),
                          )),
                      Text('$counter', style: TextStyle(fontSize: 20)),
                      TextButton(
                          onPressed: () {
                            cubit.counterPlus();
                          },
                          child: Text('Plus', style: TextStyle(fontSize: 20)))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
