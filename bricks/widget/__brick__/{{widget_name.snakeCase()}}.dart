import 'package:flutter/material.dart';

{{#isStateFullWidget}}

{{#isConsumerWidget}}
class {{widget_name.pascalCase()}} extends ConsumerStatefulWidget {
  const {{widget_name.pascalCase()}}({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _{{widget_name.pascalCase()}}State();
}

class _{{widget_name.pascalCase()}}State extends ConsumerState<{{widget_name.pascalCase()}}> {

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
{{/isConsumerWidget}}

{{^isConsumerWidget}}
class {{widget_name.pascalCase()}} extends StatefulWidget {
  const {{widget_name.pascalCase()}}({super.key});

  @override
  State<{{widget_name.pascalCase()}}> createState() => _{{widget_name.pascalCase()}}State();
}

class _{{widget_name.pascalCase()}}State extends State<{{widget_name.pascalCase()}}> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
{{/isConsumerWidget}}


{{/isStateFullWidget}}

{{^isStateFullWidget}}

{{#isConsumerWidget}}
class {{widget_name.pascalCase()}} extends ConsumerWidget {
  const {{widget_name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}
{{/isConsumerWidget}}


{{^isConsumerWidget}}

class {{widget_name.pascalCase()}} extends StatelessWidget {
  const {{widget_name.pascalCase()}}({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
{{/isConsumerWidget}}

{{/isStateFullWidget}}