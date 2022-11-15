import 'package:belajar_getx/pages/page3.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class PageDua extends StatelessWidget {
  const PageDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        centerTitle: true,
        title: Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Page 2",
              style: TextStyle(fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pop();

                    Get.back(); //like pop
                  },
                  child: Text("<Back"),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pop();

                    Get.to(PageTiga()); //like pop
                  },
                  child: Text("Next>"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
