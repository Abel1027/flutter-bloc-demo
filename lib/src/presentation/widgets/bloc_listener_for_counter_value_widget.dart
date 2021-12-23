import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_demo/src/infrastructure/di/providers.dart';
import 'package:bloc_demo/src/application/counter/counter_cubit.dart';
import 'package:bloc_demo/src/presentation/pages/increment_decrement_page.dart';

class BlocListenerForCounterValueWidget extends StatelessWidget {
  final Widget child;

  const BlocListenerForCounterValueWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// listening to events
    return BlocListener<CounterCubit, CounterState>(
      bloc: getIt<CounterCubit>(),
      listener: (context, state) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'New counter value: ${state.counter} '
              '${state.counter == 5 ? 'Going to increment/decrement page' : ''}',
            ),
          ),
        );

        if (state.counter == 5) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const IncrementDecrementCounterPage(),
            ),
          );
        }
      },
      child: child,
    );
  }
}
