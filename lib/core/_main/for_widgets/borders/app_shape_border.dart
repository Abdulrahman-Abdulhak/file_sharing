import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import './app_box_border.dart';
import './addons/addons.dart';
import '../../_app_class.dart';

abstract class AppShapeBorder implements AppClass<ShapeBorder> {
  static AppShapeBorder? fromOrigin(Object? border) {
    if (border == null) return null;

    return switch (border.runtimeType) {
      Border _ => AppBorder.fromOrigin(border as Border),
      BoxBorder _ => AppBoxBorder.fromOrigin(border),
      OutlinedBorder _ => AppOutlinedBorder.fromOrigin(border),
      _ => throw "The border passed isn't defined for AppShapeBorder",
    };
  }

  const AppShapeBorder();
}

abstract class AppOutlinedBorder extends AppShapeBorder {
  static AppOutlinedBorder? fromOrigin(Object? border) {
    if (border == null) return null;

    return switch (border.runtimeType) {
      _ => throw "The border passed isn't defined for AppOutlinedBorder",
    };
  }

  final AppBorderSide borderSide;

  const AppOutlinedBorder({this.borderSide = AppBorderSide.none});

  @override
  OutlinedBorder compute(BuildContext? context, BoxConstraints? constraints);

  @override
  bool needsConstraints(BuildContext context) {
    return borderSide.needsConstraints(context);
  }

  @override
  bool get needsContext => borderSide.needsContext;
}
