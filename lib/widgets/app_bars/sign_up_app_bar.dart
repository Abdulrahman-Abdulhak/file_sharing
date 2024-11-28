import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '/core/core.dart';

import './main_app_bar.dart';

@RoutePage()
class SignUpAppBar extends AppHeaderNav {
  SignUpAppBar({super.key});

  @override
  PreferredSizeWidget compute(
    BuildContext context,
    BoxConstraints? constraints,
  ) {
    final title = translation(context).signUp;
    return MainAppBar(titleName: title).compute(context, constraints);
  }
}
