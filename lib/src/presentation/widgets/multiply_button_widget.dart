import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_demo/src/application/multiplier/multiplier_cubit.dart';

class MultiplyButtonWidget extends StatelessWidget {
  const MultiplyButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => context.read<MultiplierCubit>().multiply(2),
      tooltip: 'Multiply',
      child: const Text('*'),
    );
  }
}
