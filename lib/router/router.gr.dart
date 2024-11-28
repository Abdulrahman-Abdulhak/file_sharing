// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:file_sharing/screens/sign_in_screen.dart' as _i2;
import 'package:file_sharing/screens/sign_up_screen.dart' as _i4;
import 'package:file_sharing/widgets/app_bars/sign_in_app_bar.dart' as _i1;
import 'package:file_sharing/widgets/app_bars/sign_up_app_bar.dart' as _i3;
import 'package:flutter/material.dart' as _i6;

/// generated route for
/// [_i1.SignInAppBar]
class SignInAppBar extends _i5.PageRouteInfo<SignInAppBarArgs> {
  SignInAppBar({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          SignInAppBar.name,
          args: SignInAppBarArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignInAppBar';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SignInAppBarArgs>(orElse: () => const SignInAppBarArgs());
      return _i1.SignInAppBar(key: args.key);
    },
  );
}

class SignInAppBarArgs {
  const SignInAppBarArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'SignInAppBarArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.SignInScreen]
class SignInRoute extends _i5.PageRouteInfo<void> {
  const SignInRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.SignInScreen();
    },
  );
}

/// generated route for
/// [_i3.SignUpAppBar]
class SignUpAppBar extends _i5.PageRouteInfo<SignUpAppBarArgs> {
  SignUpAppBar({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          SignUpAppBar.name,
          args: SignUpAppBarArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignUpAppBar';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<SignUpAppBarArgs>(orElse: () => const SignUpAppBarArgs());
      return _i3.SignUpAppBar(key: args.key);
    },
  );
}

class SignUpAppBarArgs {
  const SignUpAppBarArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'SignUpAppBarArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.SignUpScreen]
class SignUpRoute extends _i5.PageRouteInfo<void> {
  const SignUpRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.SignUpScreen();
    },
  );
}
