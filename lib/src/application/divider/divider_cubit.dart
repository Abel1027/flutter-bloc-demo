import 'package:bloc_demo/src/infrastructure/counter_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'divider_state.dart';

class DividerCubit extends Cubit<DividerState> {
  DividerCubit(
    this._counterRepository,
    this._counter,
  ) : super(DividerState.initial());

  final CounterRepository _counterRepository;
  final int _counter;

  void setInitialState() {
    final newState = state.copyWith(
      counter: _counter.toDouble(),
    );

    emit(newState);
  }

  void divide(int factor) async {
    final loadingState = state.copyWith(
      isLoading: true,
    );

    emit(loadingState);

    final divideResponse = await _counterRepository.divide(
      state.counter,
      factor,
    );

    final newState = state.copyWith(
      counter: divideResponse,
      isLoading: false,
    );

    emit(newState);
  }
}
