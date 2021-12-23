import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_demo/src/application/divider/divider_cubit.dart';

class DivideButtonWidget extends StatelessWidget {
  const DivideButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => context.read<DividerCubit>().divide(2),
      tooltip: 'Divide',
      child: const Text('÷'),
    );
  }
}
