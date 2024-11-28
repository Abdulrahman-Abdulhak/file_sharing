import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'initial.g.dart';

@Riverpod()
Future<bool> loaded(LoadedRef ref) async {
  final loadingList = [true];
  return loadingList.every((test) => test);
}
