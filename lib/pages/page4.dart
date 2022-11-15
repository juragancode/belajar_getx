import 'package:flutter/material.dart';

class PageEmpat extends StatelessWidget {
  const PageEmpat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page 4"),
      ),
      body: Center(
        child: Text(
          "Page 4",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
