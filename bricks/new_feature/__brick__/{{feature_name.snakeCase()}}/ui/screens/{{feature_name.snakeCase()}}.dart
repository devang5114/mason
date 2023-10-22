import 'package:flutter/material.dart';
{{#isGetxFeature}}import 'package:get/get.dart';{{/isGetxFeature}}
{{#isRiverPodFeature}}import 'package:flutter_riverpod/flutter_riverpod.dart';{{/isRiverPodFeature}}
import '../../controller/{{feature_name.snakeCase()}}_controller.dart';

class {{feature_name.pascalCase()}} extends {{#isGetxFeature}}GetView<{{feature_name.pascalCase()}}Controller>{{/isGetxFeature}}{{#isRiverPodFeature}}ConsumerWidget{{/isRiverPodFeature}}{
  const {{feature_name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context{{#isRiverPodFeature}}, WidgetRef ref{{/isRiverPodFeature}}) {
    return Scaffold(
      body:Container()
    );
  }
}