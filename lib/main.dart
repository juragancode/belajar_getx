import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SnackBar GetX"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // ScaffoldMessenger.of(context).showSnackBar(
              //   SnackBar(
              //     content: Text("Halo"),
              //     action: SnackBarAction(
              //       label: "ini label",
              //       onPressed: () {},
              //     ),
              //   ),
              // );

              Get.snackbar(
                "Halo",
                "This is messege!",
                // backgroundColor: Colors.grey,
              );
            },
            child: Text("Open SnackBar")),
      ),
    );
  }
}
