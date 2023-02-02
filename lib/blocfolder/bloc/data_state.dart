part of 'data_bloc.dart';

abstract class DataState {}

class DataInitial extends DataState {}

class Dataloading extends DataState {}

class DataSuccess extends DataState {
  List<DataModel>? list;
  DataSuccess(this.list);
}

class DataError extends DataState {
  String? error;
  DataError(this.error);
}
