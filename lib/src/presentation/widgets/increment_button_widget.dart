import 'package:flutter/material.dart';

import 'package:bloc_demo/src/infrastructure/di/providers.dart';
import 'package:bloc_demo/src/application/counter/counter_cubit.dart';

class IncrementButtonWidget extends StatelessWidget {
  const IncrementButtonWidget({
    Key? key,
    required this.heroTag,
  }) : super(key: key);

  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      onPressed: () => getIt<CounterCubit>().increment(),
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
