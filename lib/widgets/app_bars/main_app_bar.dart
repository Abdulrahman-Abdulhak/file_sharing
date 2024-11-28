import 'package:flutter/material.dart';

import '/core/core.dart';

class MainAppBar extends AppHeaderNav {
  final String titleName;
  MainAppBar({
    super.key,
    required this.titleName,
  });

  @override
  PreferredSizeWidget compute(
    BuildContext context,
    BoxConstraints? constraints,
  ) {
    return AppHeaderNav(
      title: AppText.medium(titleName),
    ).compute(context, constraints);
  }
}
