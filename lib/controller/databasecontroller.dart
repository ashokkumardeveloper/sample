import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/model/usermodel.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:get/get.dart';

class DataBaseController extends GetxController {
  FirebaseFirestore db = FirebaseFirestore.instance;
  Rx<UserModel> userModel = UserModel().obs;
  var dataList = <UserModel>[].obs;
  Rx<Address> address = Address().obs;

  FirebaseAuth auth = FirebaseAuth.instance;

  updatedata(UserModel updateUserModel) async {
    await db
        .collection("usermodel")
        .doc(auth.currentUser?.uid)
        .collection("users")
        .doc(updateUserModel.id)
        .update(updateUserModel.toMap());
  }

  getdata() async {
    await db
        .collection("usermodel")
        .doc(auth.currentUser?.uid)
        .collection("users")
        .get()
        .then((value) {
      dataList.value = value.docs.map((e) => UserModel.fromMap(e)).toList();
      print(dataList);
    });
  }

  createDate() async {
    try {
      address.value = Address(
          id: "addressid1", pincodes: ["678554", "678555"], street: "kpara");

      userModel.value = UserModel(
          address: [address.value],
          age: 60,
          educations: ["+2", "sslc"],
          id: "",
          name: "ashok");

      var ref = await db
          .collection("usermodel")
          .doc(auth.currentUser?.uid)
          .collection("users")
          .add(userModel.value.toMap());

      address.value.street = "upadted";

      await ref.update({"id": ref.id});
      await getdata();
    } on FirebaseException catch (e) {
      Get.snackbar("err", "$e");
    }
  }

  @override
  void onInit() {
    getdata();
    super.onInit();
  }

//  address.value = Address(
//           id: "UPDATE2", pincodes: [67676, "hghgh"], street: "STREET UPADTED2");
//       var ref = db
//           .collection("usermodel")
//           .doc(auth.currentUser?.uid)
//           .collection("detail")
//           .doc("6qg2aFht2wjMY9rneSo0");

//       await ref.update({
//         "address": FieldValue.arrayUnion([address.value.toMap()])
//       });

}
