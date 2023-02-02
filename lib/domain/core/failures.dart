import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  factory ValueFailure.invalidEmail({required String failedvalue}) =
      InvalidEmail<T>;
  factory ValueFailure.invalidPassword({required String failedvalue}) =
      InvalidPassword<T>;
}
