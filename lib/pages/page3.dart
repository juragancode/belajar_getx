import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PageTiga extends StatelessWidget {
  const PageTiga({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page 3"),
      ),
      body: Center(
        child: Text(
          "Page 3",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}