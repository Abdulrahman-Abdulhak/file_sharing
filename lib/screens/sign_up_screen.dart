import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '/core/core.dart';
import '/widgets/widgets.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: SignUpAppBar(),
    );
  }
}
