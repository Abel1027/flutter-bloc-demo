import 'package:bloc_demo/src/application/power/power_bloc.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_demo/src/infrastructure/di/providers.dart';
import 'package:bloc_demo/src/presentation/widgets/bloc_builder_power_counter_value_widget.dart';

class PowerCounterPage extends StatelessWidget {
  const PowerCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PowerBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Power Counter Page'),
        ),
        body: const Center(
          child: BlocBuilderPowerCounterValueWidget(),
        ),
      ),
    );
  }
}
