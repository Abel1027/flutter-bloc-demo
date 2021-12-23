import 'package:flutter/material.dart';

import 'package:bloc_demo/src/infrastructure/di/providers.dart';
import 'package:bloc_demo/src/config/const.dart';
import 'package:bloc_demo/src/presentation/widgets/dependency_injection_for_counter_title_widget.dart';
import 'package:bloc_demo/src/presentation/widgets/bloc_builder_for_counter_value_widget.dart';
import 'package:bloc_demo/src/presentation/widgets/increment_button_widget.dart';
import 'package:bloc_demo/src/presentation/pages/decrement_counter_with_listener_page.dart';
import 'package:bloc_demo/src/presentation/pages/multiply_counter_page.dart';
import 'package:bloc_demo/src/presentation/pages/divider_counter_page.dart';

class IncrementCounterPage extends StatelessWidget {
  const IncrementCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          getIt<String>(
            instanceName: Constants.counterPageTitleInstanceName,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const DependencyInjectionForCounterTitleWidget(),
            const BlocBuilderForCounterValueWidget(),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DecrementCounterPage(),
                ),
              ),
              child: const Text('Go to decrement counter page'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MultiplyCounterPage(),
                ),
              ),
              child: const Text('Go to multiplier counter page'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const DividerCounterPage(),
                ),
              ),
              child: const Text('Go to divider counter page'),
            ),
          ],
        ),
      ),
      floatingActionButton: const IncrementButtonWidget(
        heroTag: 'inc',
      ),
    );
  }
}
