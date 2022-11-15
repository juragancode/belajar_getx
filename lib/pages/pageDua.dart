import 'package:flutter/material.dart';
import '../pages/pageSatu.dart';
import 'package:get/get.dart';
import '../controllers/pageSatuController.dart';

class PageDua extends StatelessWidget {
  PageSatuController PageSatuC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Page 1",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${PageSatuC.data['name']} - ${PageSatuC.data['age']} tahun",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
