// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cloud_functions/model/datamodel.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';

// import '../model/usermodel.dart';

// class FirebaseCrud {
//   FirebaseFirestore db = FirebaseFirestore.instance;
//   FirebaseAuth auth = FirebaseAuth.instance;

//   Future<DocumentReference<Map<String, dynamic>>?> createdata(
//       DataModel dataModel) async {
//     try {
//       var res = await db.collection("data").add(dataModel.toMap());
//       return res;
//     } catch (e) {
//       ScaffoldMessenger(child: Text(e.toString()));
//     }
//   }

//   // Future<List<DataModel>> getdata() async {

//   //   try {
//   //     await db.collection("data").get().then((value) async {
//   //       var d = value.docs.map((e) => DataModel.fromMap(e)).toList();
//   //       print(d);
//   //       return res;
//   //     });
//   //   } catch (e) {
//   //     ScaffoldMessenger(child: Text(e.toString()));
//   //   }

//   //   return res;
//   // }

//   Future<List<UserModel>?> getdata() async {
//     await db
//         .collection("usermodel")
//         .doc(auth.currentUser?.uid)
//         .collection("users")
//         .get()
//         .then((value) {
//       List<UserModel>? d = value.docs.map((e) => UserModel.fromMap(e)).toList();

//       print("${d}check");
//       return d;
//     });
//     return null;
//   }
// }
