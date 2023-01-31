// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:cloud_functions/model/datamodel.dart';
import 'package:cloud_functions/model/usermodel.dart';

abstract class DataState {}

class DataLoadingState extends DataState {}

class DataLoadedState extends DataState {
  final List<DataModel> list;
  DataLoadedState(this.list);
}

class DataFailureState extends DataState {
  final String error;

  DataFailureState(this.error);
}

class PostdataState extends DataState {
  String? name;
  String? age;
  String? id;
  String? address;
  PostdataState({this.name, this.address, this.age, this.id});
}
