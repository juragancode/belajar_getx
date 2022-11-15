import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './page2.dart';

class PageSatu extends StatelessWidget {
  const PageSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Page 1",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(PageDua());
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
