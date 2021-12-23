import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_demo/src/application/divider/divider_cubit.dart';
import 'package:bloc_demo/src/presentation/pages/power_counter_page.dart';

class BlocBuilderDividedCounterValueWidget extends StatelessWidget {
  const BlocBuilderDividedCounterValueWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text('Divition result by 2:'),
        BlocBuilder<DividerCubit, DividerState>(
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
        ElevatedButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const PowerCounterPage(),
            ),
          ),
          child: const Text('Go to power counter page'),
        ),
      ],
    );
  }
}
