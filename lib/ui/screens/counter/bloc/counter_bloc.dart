import 'package:blocproject/ui/screens/counter/bloc/counter_event.dart';
import 'package:blocproject/ui/screens/counter/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents, CounterStates> {
  int counter = 0;

  static CounterBloc get(context) => BlocProvider.of(context);
  CounterBloc() : super(InitialCounterState()) {
    on<IncrementCounterValue>((event, emit) {
      counter++;
      emit(ChangeCounterSuccessState());
    });
    on<DecrementCounterValue>((event, emit) {
      if (counter > 0) {
        counter--;
      }
      emit(ChangeCounterSuccessState());
    });
  }
}
