import 'package:flutter/material.dart';

import 'package:bloc_demo/src/infrastructure/di/providers.dart';
import 'package:bloc_demo/src/application/counter/counter_cubit.dart';

class DecrementButtonWidget extends StatelessWidget {
  final String heroTag;

  const DecrementButtonWidget({
    Key? key,
    required this.heroTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag,
      onPressed: () => getIt<CounterCubit>().decrement(),
      tooltip: 'Decrement',
      child: const Icon(Icons.remove),
    );
  }
}
