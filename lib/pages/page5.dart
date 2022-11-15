import 'package:flutter/material.dart';

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
        child: Text(
          "Page 5",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
