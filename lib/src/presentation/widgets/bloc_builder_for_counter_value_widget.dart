import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_demo/src/application/counter/counter_cubit.dart';

class BlocBuilderForCounterValueWidget extends StatefulWidget {
  const BlocBuilderForCounterValueWidget({Key? key}) : super(key: key);

  @override
  State<BlocBuilderForCounterValueWidget> createState() =>
      _BlocBuilderForCounterValueWidgetState();
}

class _BlocBuilderForCounterValueWidgetState
    extends State<BlocBuilderForCounterValueWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) => Text(
        '${state.counter}',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
