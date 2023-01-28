import 'package:cloud_functions/controller/authcontroller.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneAuth extends StatelessWidget {
  PhoneAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PhoneAuth"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Sign With Phone Number"),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "ENTER PHONE NUMBER",
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    focusedErrorBorder: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  // if (ctrl.phoneNumber.text.trim().isNotEmpty) {
                  //   ctrl.phoneSignIn();
                  // }
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green),
                  child: const Text(
                    "Get OTP",
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
            ],
          ),
        ));
  }
}
