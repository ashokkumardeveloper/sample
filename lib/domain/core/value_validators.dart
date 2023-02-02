import 'package:dartz/dartz.dart';

import '../auth/value_objects.dart';
import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const reg =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  if (RegExp(reg).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedvalue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 7) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedvalue: input));
  }
}
