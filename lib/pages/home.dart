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
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    "${homeC.dataInt}",
                    style: TextStyle(fontSize: 20),
                  )),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => homeC.decrementInt(),
                    child: Text("-"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () => homeC.incrementInt(),
                    child: Text("+"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    "${homeC.dataString}",
                    style: TextStyle(fontSize: 20),
                  )),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => homeC.resetDataString(),
                    child: Text("reset"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () => homeC.updateDataString(),
                    child: Text("upadate"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    "${homeC.dataDouble}",
                    style: TextStyle(fontSize: 20),
                  )),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => homeC.decrementDouble(),
                    child: Text("-"),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () => homeC.incrementDouble(),
                    child: Text("+"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    "${homeC.dataBool}",
                    style: TextStyle(fontSize: 20),
                  )),
              Row(
                children: [
                  // ElevatedButton(
                  //   onPressed: () => homeC.resetDataBool(),
                  //   child: Text("false"),
                  // ),
                  // SizedBox(width: 20),
                  // ElevatedButton(
                  //   onPressed: () => homeC.updateDataBool(),
                  //   child: Text("true"),
                  // ),

                  ElevatedButton(
                    onPressed: () => homeC.changeDataBool(),
                    child: Text("change"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    "${homeC.dataList}",
                    style: TextStyle(fontSize: 20),
                  )),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => homeC.tambahDataList(),
                    child: Text("tambah"),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    "${homeC.dataSet}",
                    style: TextStyle(fontSize: 20),
                  )),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () => homeC.tambahDataSet(),
                    child: Text("tambah"),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 3,
          ),
          Obx(
            () => ListTile(
                title: Text(
              "${homeC.myMap}",
              style: TextStyle(fontSize: 20),
            )),
          ),
        ],
      ),
    );
  }
}
