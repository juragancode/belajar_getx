import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/homeController.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(homeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Tipe data Rx",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "Terjadi perubahan : ${homeC.dataPantau} X",
                    style: TextStyle(fontSize: 20),
                  )),
              SizedBox(height: 20),
              TextField(
                onChanged: (value) => homeC.change(),
                decoration: InputDecoration(
                    labelText: "Data", border: OutlineInputBorder()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
