import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_demo/src/application/power/power_events.dart';

part 'power_state.dart';

class PowerBloc extends Bloc<PowerEvent, PowerState> {
  final int _counter;

  PowerBloc(this._counter) : super(PowerState.initial()) {
    on<SetInitialState>((event, emit) {
      final newState = state.copyWith(
        counter: _counter.toDouble(),
      );

      emit(newState);
    });

    on<ComputePowerEvent>((event, emit) {
      final newState = state.copyWith(
        counter: pow(state.counter, event.power).toDouble(),
      );

      emit(newState);
    });
  }
}
