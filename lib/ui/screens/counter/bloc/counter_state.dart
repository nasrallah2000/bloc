abstract class CounterStates {}

class InitialCounterState extends CounterStates {}

class ChangeCounterSuccessState extends CounterStates {}

class ChangeCounterErrorState extends CounterStates {
  final String error;

  ChangeCounterErrorState(this.error);
}
