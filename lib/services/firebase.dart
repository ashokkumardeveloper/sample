import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/error/errorhandlers.dart';
import 'package:cloud_functions/model/datamodel.dart';
import 'package:dartz/dartz.dart';
import 'package:dartz/dartz_streaming.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../model/usermodel.dart';

class FirebaseRepository {
  FirebaseFirestore db = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  ErrorHandlers err = ErrorHandlers();

  // Future<Either<ErrorHandlers?, List<DataModel>?>?> getdata() async {
  //   try {
  //     await db.collection("data").get().then((value) {
  //       if (value.docs.isNotEmpty) {
  //         print("reight null repo");
  //         return right(value.docs.map((e) => DataModel.fromMap(e)).toList());
  //       } else {
  //         print("left null repo");
  //         return left(ErrorHandlers(error: "data null"));
  //       }
  //     });
  //   } on FirebaseException catch (e) {
  //     print("fcatch");
  //     return left(ErrorHandlers(error: e.message));
  //   }
  //   print("server error repo");
  //   return left(ErrorHandlers(error: "server error"));
  // }

  Future<Either<ErrorHandlers?, List<DataModel>?>?> getdata() async {
    List<DataModel> list = [];
    try {
      await db.collection("data").get().then((value) async {
        var d = value.docs.map((e) => DataModel.fromMap(e)).toList();
        for (var element in d) {
          list.add(element);
        }

        return right.call(d);
      });
    } catch (e) {
      return left(ErrorHandlers(error: e.toString()));
    }

    return right(list);
  }

  // Future<List<UserModel>?> getdata() async {
  //   await db
  //       .collection("usermodel")
  //       .doc(auth.currentUser?.uid)
  //       .collection("users")
  //       .get()
  //       .then((value) {
  //     List<UserModel>? d = value.docs.map((e) => UserModel.fromMap(e)).toList();

  //     print("${d}check");
  //     return d;
  //   });
  //   return null;
  // }
}
