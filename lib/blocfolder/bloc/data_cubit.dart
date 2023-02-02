// import 'package:cloud_functions/blocfolder/bloc/data_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../services/firebase.dart';

// class DataCubit extends Cubit<DataState> {
//   DataCubit() : super(Dataloading()) {
//     getdata();
//   }

//   getdata() async {
//     var data = await FirebaseRepository().getdata();
//     print(data);
//     data?.fold((error) {
//       emit(DataError(error?.error));
//       print(error?.error);
//     }, (result) {
//       print("$result");
//       emit(DataSuccess(result));
//     });
//   }
// }
