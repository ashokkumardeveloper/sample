import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controller/authcontroller.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("ENTER OTP"),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "ENTER OTP",
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
                  // if (ctrl.verificationid.value.trim().isNotEmpty &&
                  //     ctrl.verificationid.value.trim() != "") {
                  //   ctrl.verifyOtp();
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
                    "DONE",
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
