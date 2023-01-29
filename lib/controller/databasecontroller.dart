import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/model/usermodel.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';

class DataBaseController extends GetxController {
  FirebaseFirestore db = FirebaseFirestore.instance;
  Rx<UserModel> userModel = UserModel().obs;
  Rx<Address> address = Address().obs;
  Rx<Local> local = Local().obs;
  FirebaseAuth auth = FirebaseAuth.instance;
  createDate() async {
    try {
      local.value = Local(cities: [], id: "localid", localname: "localname1");

      address.value = Address(
          id: "addressid1",
          local: local.value,
          pincodes: [678554, "678555"],
          street: "kpara");
      userModel.value = UserModel(
          address: [], age: 60, educations: [], id: "1", name: "ashok");

      await db
          .collection("usermodel")
          .doc(auth.currentUser?.uid)
          .collection("detail")
          .add(userModel.value.toMap());

      address.value = Address(
          id: "UPDATE2",
          local: local.value,
          pincodes: [67676, "hghgh"],
          street: "STREET UPADTED2");
      var ref = db
          .collection("usermodel")
          .doc(auth.currentUser?.uid)
          .collection("detail")
          .doc("6qg2aFht2wjMY9rneSo0");

      await ref.update({
        "address": FieldValue.arrayUnion([address.value.toMap()])
      });
    } on FirebaseException catch (e) {
      Get.snackbar("err", "$e");
    }
  }
}
