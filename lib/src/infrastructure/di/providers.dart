import 'package:bloc_demo/src/application/counter/counter_cubit.dart';
import 'package:bloc_demo/src/application/divider/divider_cubit.dart';
import 'package:bloc_demo/src/application/multiplier/multiplier_cubit.dart';
import 'package:bloc_demo/src/application/power/power_bloc.dart';
import 'package:bloc_demo/src/application/power/power_events.dart';
import 'package:bloc_demo/src/config/const.dart';
import 'package:bloc_demo/src/infrastructure/counter_repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void getItSetup() {
  getIt.registerSingleton<String>(
    'Increment Counter Page',
    instanceName: Constants.counterPageTitleInstanceName,
  );

  getIt.registerSingleton<String>(
    'You have pushed the button this many times (using GetIt as DI):',
    instanceName: Constants.counterTitleInstanceName,
  );

  getIt.registerLazySingleton<CounterCubit>(
    () => CounterCubit(),
  );

  getIt.registerLazySingleton<CounterRepository>(
    () => CounterRepository(),
  );

  getIt.registerFactory<MultiplierCubit>(
    () => MultiplierCubit(
      getIt<CounterRepository>(),
    ),
  );

  getIt.registerFactory<DividerCubit>(
    () => DividerCubit(
      getIt<CounterRepository>(),
      getIt<CounterCubit>().state.counter,
    ),
  );

  getIt.registerFactory<PowerBloc>(
    () => PowerBloc(
      getIt<CounterCubit>().state.counter,
    )
      ..add(SetInitialState(getIt<DividerCubit>().state.counter))
      ..add(ComputePowerEvent(3)),
  );
}
