import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    final updatedValut = state + 1;
    emit(updatedValut);
  }

  void second_increment() {
    final updatedValut = state + 2;
    emit(updatedValut);
  }

  void decrement() {
    final updatedValut = state - 1;
    emit(updatedValut);
  }

  void second_decrement() {
    final updatedValut = state - 2;
    emit(updatedValut);
  }
}
