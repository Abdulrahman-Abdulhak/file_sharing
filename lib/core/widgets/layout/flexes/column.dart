import 'package:flutter/material.dart';

import './flex.dart';

class AppColumn extends AppFlex {
  const AppColumn({
    super.key,
    super.gap,
    super.textBaseline,
    super.textDirection,
    super.mainAxisAlignment = MainAxisAlignment.start,
    super.crossAxisAlignment = CrossAxisAlignment.center,
    super.mainAxisSize = MainAxisSize.min,
    super.verticalDirection = VerticalDirection.down,
    super.clipBehavior = Clip.none,
    required super.children,
  }) : super(direction: Axis.vertical);
}
