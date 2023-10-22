import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  // TODO: add pre-generation logic.
  final progress = context.logger.progress('Installing package');

  // Add the package to the pubspec.yaml file.
  final pubspecFile = File('pubspec.yaml');
  if (pubspecFile.existsSync()) {
    var pubspecContent = await pubspecFile.readAsString();
    if (!pubspecContent.contains('your_package_name')) {
      pubspecContent = pubspecContent.replaceFirst(
        'dependencies:',
        'dependencies:\n  get: \n  flutter_screenutil:', // Replace with the actual package name and version.
      );
      await pubspecFile.writeAsString(pubspecContent);
    }
  }
  // Run `flutter packages get` after modifying the pubspec.yaml file.
  // await Process.run('flutter', ['pub', 'get']);

  progress.complete();
}
