import "package:flutter_bloc/flutter_bloc.dart";
import 'package:cloud_functions/model/datamodel.dart';
import 'package:cloud_functions/services/firebase.dart';

part 'data_event.dart';
part 'data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  DataBloc() : super(Dataloading()) {
    on<DataGetEvent>((event, emit) async {
      var data = await FirebaseRepository().getdata();
      data?.fold((error) {
        emit(DataError(error?.error));
      }, (result) {
        emit(DataSuccess(result));
      });
    });
  }
}
