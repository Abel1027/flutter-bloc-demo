import 'package:flutter/material.dart';

import 'package:bloc_demo/src/infrastructure/di/providers.dart';
import 'package:bloc_demo/src/config/const.dart';

class DependencyInjectionForCounterTitleWidget extends StatelessWidget {
  const DependencyInjectionForCounterTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _counterTitle = getIt<String>(
      instanceName: Constants.counterTitleInstanceName,
    );
    return Text(_counterTitle);
  }
}
