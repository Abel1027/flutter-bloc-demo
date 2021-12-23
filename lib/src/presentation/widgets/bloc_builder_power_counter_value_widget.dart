import 'package:bloc_demo/src/application/power/power_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBuilderPowerCounterValueWidget extends StatelessWidget {
  const BlocBuilderPowerCounterValueWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PowerBloc, PowerState>(
      builder: (context, state) {
        return Text(
          '${state.counter}',
          style: Theme.of(context).textTheme.headline4,
        );
      },
    );
  }
}
