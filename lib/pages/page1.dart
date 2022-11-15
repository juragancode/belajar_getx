import 'package:flutter/material.dart';

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
        child: Text(
          "Page 1",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
