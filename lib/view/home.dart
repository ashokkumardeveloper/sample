import 'package:cloud_functions/controller/databasecontroller.dart';
import 'package:cloud_functions/controller/notificationcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'detailpage.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final notiController = Get.put(NotificationController());
  final dbcontro = Get.put(DataBaseController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                //   notiController.sendNotification(
                //       "title", "welcome to cloudfunctions");
                dbcontro.createDate();
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green),
                child: const Text(
                  "SEND NOTIFICATION",
                ),
              ),
            ),
            Expanded(
                child: Obx(
              () => ListView.builder(
                shrinkWrap: true,
                itemCount: dbcontro.dataList.length,
                itemBuilder: (context, index) {
                  var d = dbcontro.dataList[index];
                  return ListTile(
                    onTap: () {
                      Get.to(() => DetailPage(
                            userModel: d,
                          ));
                    },
                    title: Text(d.name ?? ""),
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
