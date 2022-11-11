import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
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
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dialog GetX"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // showDialog(
              //   context: context,
              //   builder: (context) => AlertDialog(
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(0)),
              //     title: Text("This is title"),
              //     content: Text("This is alert content in dialog function"),
              //   ),
              // );
              // Get.defaultDialog(
              //   title: "This is title",
              //   middleText: "This is alert content in dialog function",
              //   // content: Text("This is alert content in dialog function"),
              //   actions: [
              //     ElevatedButton(
              //       onPressed: () {},
              //       child: Text("Lanjut"),
              //     ),
              //     ElevatedButton(
              //       onPressed: () {},
              //       child: Text("Cancel"),
              //     ),
              //   ],
              // );

              Get.dialog(
                AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                  title: Text("This is title"),
                  content: Text("This is alert content in dialog function"),
                ),
              );
            },
            child: Text("Open Dialog")),
      ),
    );
  }
}
