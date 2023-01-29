import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/model/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../controller/databasecontroller.dart';

class DetailPage extends StatelessWidget {
  DetailPage({super.key, this.userModel});
  UserModel? userModel;
  final dbcontro = Get.put(DataBaseController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  userModel?.age = 100;
                  userModel?.address?.add(Address(
                    id: userModel?.id,
                    street: "rohit para",
                  ));
                  dbcontro.updatedata(userModel!);
                },
                icon: Icon(Icons.add))
          ],
        ),
        body: ListView.builder(
          itemCount: userModel?.address?.length,
          itemBuilder: (context, index) {
            var d = userModel?.address?[index];
            return ListTile(
              title: Text(d?.street ?? ""),
            );
          },
        ));
  }
}
