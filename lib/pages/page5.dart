import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageLima extends StatelessWidget {
  const PageLima({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page 5"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Page 5",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed(
                    "home"); // mengapus semua tab/layer sehinnga tidak bisa di-back
              },
              child: Text("<<< Back All"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed("3");
              },
              child: Text("<<< Back Page 3"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed("2");
              },
              child: Text("<<< Back Page 2"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAllNamed("1");
              },
              child: Text("<<< Back Page 1"),
            ),
          ],
        ),
      ),
    );
  }
}
