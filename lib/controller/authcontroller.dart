// import 'package:cloud_functions/view/home.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../view/otpscreen.dart';

// class AuthControler extends GetxController {
//   FirebaseAuth auth = FirebaseAuth.instance;
//   TextEditingController phoneNumber = TextEditingController();
//   TextEditingController otp = TextEditingController();
//   RxString verificationid = "".obs;

//   phoneSignIn() async {
//     await auth.verifyPhoneNumber(
//       phoneNumber: "+91${phoneNumber.text}",
//       verificationCompleted: (phoneAuthCredential) async {
//         await auth
//             .signInWithCredential(phoneAuthCredential)
//             .then((value) => Get.to(() => const HomeScreen()));
//       },
//       verificationFailed: (error) {
//         Get.snackbar("err", error.message ?? "something wrong");
//       },
//       codeSent: (verificationId, forceResendingToken) {
//         verificationid.value = verificationId;
//         Get.to(() => OtpScreen());
//       },
//       codeAutoRetrievalTimeout: (verificationId) {},
//     );
//   }

//   verifyOtp() async {
//     PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
//         verificationId: verificationid.value, smsCode: otp.text.trim());
//     if (verificationid.value != "") {
//       try {
//         await auth
//             .signInWithCredential(phoneAuthCredential)
//             .then((value) => Get.to(() => const HomeScreen()));
//       } on FirebaseAuthException catch (e) {
//         Get.snackbar("err", e.message ?? "wrong OTP");
//       }
//     }
//   }
// }



