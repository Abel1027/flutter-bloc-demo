import 'package:bloc_demo/src/infrastructure/counter_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'multiplier_state.dart';

class MultiplierCubit extends Cubit<MultiplierState> {
  MultiplierCubit(this._counterRepository) : super(MultiplierState.initial());

  final CounterRepository _counterRepository;

  void multiply(int factor) async {
    final loadingState = state.copyWith(
      isLoading: true,
    );

    emit(loadingState);

    final multiplyResponse = await _counterRepository.multiply(
      state.counter,
      factor,
    );

    final newState = state.copyWith(
      counter: multiplyResponse,
      isLoading: false,
    );

    emit(newState);
  }
}
