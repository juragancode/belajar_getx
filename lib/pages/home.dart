import 'package:flutter/material.dart';

import 'package:get/get.dart';

import './page1.dart';
import './page2.dart';
import './page3.dart';
import './page4.dart';
import './page5.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => PageSatu(),
              //   ),
              // );

              // Navigator.of(context).pushReplacement(
              //   // Tidak bisa di-Back
              //   MaterialPageRoute(
              //     builder: (context) => PageSatu(),
              //   ),
              // );

              Get.off(PageSatu()); // Sama seperti pushReplacement

              // Get.to(PageSatu());
            },
            child: Text("Page 1"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(PageDua());
            },
            child: Text("Page 2"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(PageTiga());
            },
            child: Text("Page 3"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(PageEmpat());
            },
            child: Text("Page 4"),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(PageLima());
            },
            child: Text("Page 5"),
          ),
        ],
      ),
    );
  }
}
