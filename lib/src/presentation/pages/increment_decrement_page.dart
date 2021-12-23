import 'package:flutter/material.dart';

import 'package:bloc_demo/src/infrastructure/di/providers.dart';
import 'package:bloc_demo/src/config/const.dart';
import 'package:bloc_demo/src/presentation/widgets/bloc_builder_for_counter_value_widget.dart';
import 'package:bloc_demo/src/presentation/widgets/decrement_button_widget.dart';
import 'package:bloc_demo/src/presentation/widgets/increment_button_widget.dart';

class IncrementDecrementCounterPage extends StatelessWidget {
  const IncrementDecrementCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Increment/Decrement Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              getIt<String>(
                instanceName: Constants.counterPageTitleInstanceName,
              ),
            ),
            const BlocBuilderForCounterValueWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                IncrementButtonWidget(
                  heroTag: 'inc_dec_inc',
                ),
                SizedBox(width: 10.0),
                DecrementButtonWidget(
                  heroTag: 'inc_dec_dec',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
