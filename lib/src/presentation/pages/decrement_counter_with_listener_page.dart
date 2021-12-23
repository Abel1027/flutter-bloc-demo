import 'package:flutter/material.dart';

import 'package:bloc_demo/src/presentation/widgets/bloc_listener_for_counter_value_widget.dart';
import 'package:bloc_demo/src/presentation/widgets/dependency_injection_for_counter_title_widget.dart';
import 'package:bloc_demo/src/presentation/widgets/bloc_builder_for_counter_value_widget.dart';
import 'package:bloc_demo/src/presentation/widgets/decrement_button_widget.dart';

class DecrementCounterPage extends StatelessWidget {
  const DecrementCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Decrement Counter Page With Listener'),
      ),
      body: BlocListenerForCounterValueWidget(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              DependencyInjectionForCounterTitleWidget(),
              BlocBuilderForCounterValueWidget(),
            ],
          ),
        ),
      ),
      floatingActionButton: const DecrementButtonWidget(
        heroTag: 'dec',
      ),
    );
  }
}
