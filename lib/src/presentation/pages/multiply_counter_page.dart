import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_demo/src/application/multiplier/multiplier_cubit.dart';
import 'package:bloc_demo/src/infrastructure/di/providers.dart';
import 'package:bloc_demo/src/presentation/widgets/bloc_builder_multiplied_counter_value_widget.dart';
import 'package:bloc_demo/src/presentation/widgets/multiply_button_widget.dart';

class MultiplyCounterPage extends StatelessWidget {
  const MultiplyCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<MultiplierCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Multiply Counter Page'),
        ),
        body: const Center(
          child: BlocBuilderMultipliedCounterValueWidget(),
        ),
        floatingActionButton: const MultiplyButtonWidget(),
      ),
    );
  }
}
