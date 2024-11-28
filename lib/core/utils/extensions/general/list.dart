import 'dart:math';

import '../../../types/types.dart';

import './string.dart';

extension AppList<T> on List<T> {
  //* a casting function to return a list from this list with a new type.
  //* can be used as a map function.
  List<K> to<K>(K Function(T item) callback) {
    return [for (var i = 0; i < length; i++) callback(this[i])];
  }

  //TODO: merge with [this.to()].
  //* same as normal {this.to} but with index passed to function.
  List<K> toIndexed<K>(K Function(T item, int i) callback) {
    return [for (var i = 0; i < length; i++) callback(this[i], i)];
  }

  //* this creates a new list from this list with {item} being filled between its
  //* original items.
  //? by specifying the {skipTypes} parameter, every time the function encounters
  //? an element of the {skipTypes} list will be skipped.
  List<T> fillBetween(T item, [List<Type> skipTypes = const []]) {
    final newList = <T>[];

    var i = 0;
    for (var element in this) {
      newList.add(element);
      i++;

      //* only add when the element type is not in the skip list.
      if (skipTypes.contains(element.runtimeType)) continue;
      //* add only if the next element type is not in the skip list.
      if (i < length - 1 && skipTypes.contains(this[i].runtimeType)) {
        continue;
      }
      if (i == length) break;

      newList.add(item);
    }

    return newList;
  }

  //* creates a copy of this list and returns it.
  List<T> clone() {
    return List.of(this);
  }

  //* adds a [separator] between each element that is not null.
  //* use the [skipList] to specify types in the list to skip the function.
  List<T> separated(T separator, [List<Type> skipList = const []]) {
    return removeNulls().fillBetween(separator, skipList);
  }

  //* creates a sublist without regarding to the list.length
  List<T> sublistUnbounded(int start, [int? end]) {
    int lastIndex = min(length, end ?? length);
    return sublist(start, lastIndex);
  }

  T at(int index) {
    if (index >= 0) {
      assert(index < length);
      return this[index];
    }

    assert(-index <= length);
    return this[length + index];
  }

  // similar to [reduce()] but returns a singular different type from the list.
  R toValue<R>(R Function(R acc, T item) callback, R initialValue) {
    R value = initialValue;
    forEach((item) => value = callback(value, item));
    return value;
  }

  List<T> operator +(List<T> other) {
    return [...this, ...other];
  }
}

extension NullList<T> on List<T?> {
  //* returns a list with all nulls removed.
  List<T> removeNulls() {
    final newList = <T>[];

    for (var element in this) {
      if (element != null) newList.add(element);
    }

    return newList;
  }

  T? get firstNotNull => firstWhere((item) => item != null);
}

extension StringList on List<String?> {
  String combine(StringFunction callback, [String separator = '']) {
    return removeNulls().to(callback).join(separator);
  }

  String combineFirstLetters() {
    return combine((str) => str.firstChar);
  }
}

extension ListOfLists<T> on List<List<T>> {
  List<T> flatten() {
    final newList = <T>[];

    for (final list in this) {
      for (final item in list) {
        newList.add(item);
      }
    }

    return newList;
  }
}
