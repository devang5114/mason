import 'package:flutter/material.dart';
{{#isGetxFeature}}import 'package:get/get.dart';{{/isGetxFeature}}
{{#isRiverPodFeature}}import 'package:flutter_riverpod/flutter_riverpod.dart';{{/isRiverPodFeature}}
{{#isGetxFeature}}class {{feature_name.pascalCase()}}Controller extends GetxController{}{{/isGetxFeature}}
{{#isRiverPodFeature}}
final {{feature_name.camelCase()}}Controller = ChangeNotifierProvider<{{feature_name.pascalCase()}}Controller>((ref) {
  return {{feature_name.pascalCase()}}Controller();
});
class {{feature_name.pascalCase()}}Controller extends ChangeNotifier{}
{{/isRiverPodFeature}}
