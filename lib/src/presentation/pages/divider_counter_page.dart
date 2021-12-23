import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_demo/src/presentation/widgets/bloc_builder_divided_counter_widget.dart';
import 'package:bloc_demo/src/presentation/widgets/divide_button_widget.dart';
import 'package:bloc_demo/src/application/divider/divider_cubit.dart';
import 'package:bloc_demo/src/infrastructure/di/providers.dart';

class DividerCounterPage extends StatelessWidget {
  const DividerCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<DividerCubit>()..setInitialState(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Divide Counter Page'),
        ),
        body: const Center(
          child: BlocBuilderDividedCounterValueWidget(),
        ),
        floatingActionButton: const DivideButtonWidget(),
      ),
    );
  }
}
