import 'package:bloc/bloc.dart';
import 'package:flutter_application_4/counter_app/cubit&states/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterinitState());

  CounterCubit get(context) => BlocProvider.of(context);

  int counter = 0;
  counterPlus() {
    counter++;
    emit(CounterPlusState());
  }

  minusCounter() {
    counter--;
    emit(CounterMinusState());
  }
}
