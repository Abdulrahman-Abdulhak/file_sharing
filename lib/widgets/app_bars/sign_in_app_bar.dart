import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '/core/core.dart';

import './main_app_bar.dart';

@RoutePage()
class SignInAppBar extends AppHeaderNav {
  SignInAppBar({super.key});

  @override
  PreferredSizeWidget compute(
    BuildContext context,
    BoxConstraints? constraints,
  ) {
    final title = translation(context).signIn;
    return MainAppBar(titleName: title).compute(context, constraints);
  }
}
