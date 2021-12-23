import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_demo/src/application/multiplier/multiplier_cubit.dart';

class BlocBuilderMultipliedCounterValueWidget extends StatelessWidget {
  const BlocBuilderMultipliedCounterValueWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text('Multiplication result by 2:'),
        BlocBuilder<MultiplierCubit, MultiplierState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Padding(
                padding: EdgeInsets.all(2.0),
                child: CircularProgressIndicator(),
              );
            }

            return Text(
              '${state.counter}',
              style: Theme.of(context).textTheme.headline4,
            );
          },
        ),
      ],
    );
  }
}
