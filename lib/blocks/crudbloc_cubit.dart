import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/blocks/crudbloc_state.dart';
import 'package:cloud_functions/model/datamodel.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class DataCubit extends Cubit<DataState> {
  FirebaseFirestore db = FirebaseFirestore.instance;
  DataCubit() : super(DataLoadingState()) {
    getData();
  }

  createData(String name) async {
    emit(DataLoadingState());
    try {
      await db
          .collection("data")
          .add(DataModel(address: name, age: "50", id: "", name: name).toMap())
          .then((value) async {
        await getData();
      });
    } catch (e) {
      emit(DataFailureState(e.toString()));
    }
  }

  getData() async {
    emit(DataLoadingState());
    try {
      await db.collection("data").get().then((value) {
        List<DataModel> list =
            value.docs.map((e) => DataModel.fromMap(e)).toList();
        emit(DataLoadedState(list));
        print(list);
      });
    } catch (e) {
      emit(DataFailureState(e.toString()));
    }
  }
}
