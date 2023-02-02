import 'package:dartz/dartz.dart';

import '../auth/value_objects.dart';
import 'failures.dart';

abstract class ValueObject<T> {
  //emailADress class before
  ValueObject();

  Either<ValueFailure<T>, T> get value;

  @override
  bool operator ==(covariant ValueObject other) {
    if (identical(this, other)) return true;

    return other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
