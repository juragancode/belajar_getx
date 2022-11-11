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
        title: Text("BottomSheet GetX"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // showModalBottomSheet(
              //   context: context,
              //   builder: (context) => Container(
              //     // height: 500,
              //     color: Colors.grey.shade300,
              //     child: ListView(
              //       children: [
              //         ListTile(
              //           leading: Icon(Icons.home),
              //           title: Text("Home"),
              //         ),
              //         ListTile(
              //           leading: Icon(Icons.person),
              //           title: Text("Profile"),
              //         ),
              //         ListTile(
              //           leading: Icon(Icons.adb),
              //           title: Text("Bug"),
              //         ),
              //         ListTile(
              //           leading: Icon(Icons.add_business),
              //           title: Text("Add Shop"),
              //         ),
              //         ListTile(
              //           leading: Icon(Icons.home),
              //           title: Text("Home"),
              //         ),
              //         ListTile(
              //           leading: Icon(Icons.person),
              //           title: Text("Profile"),
              //         ),
              //         ListTile(
              //           leading: Icon(Icons.adb),
              //           title: Text("Bug"),
              //         ),
              //         ListTile(
              //           leading: Icon(Icons.add_business),
              //           title: Text("Add Shop"),
              //         ),
              //         ListTile(
              //           leading: Icon(Icons.home),
              //           title: Text("Home"),
              //         ),
              //         ListTile(
              //           leading: Icon(Icons.person),
              //           title: Text("Profile"),
              //         ),
              //         ListTile(
              //           leading: Icon(Icons.adb),
              //           title: Text("Bug"),
              //         ),
              //         ListTile(
              //           leading: Icon(Icons.add_business),
              //           title: Text("Add Shop"),
              //         ),
              //         ListTile(
              //           leading: Icon(Icons.home),
              //           title: Text("Home"),
              //         ),
              //         ListTile(
              //           leading: Icon(Icons.person),
              //           title: Text("Profile"),
              //         ),
              //         ListTile(
              //           leading: Icon(Icons.adb),
              //           title: Text("Bug"),
              //         ),
              //         ListTile(
              //           leading: Icon(Icons.add_business),
              //           title: Text("Add Shop"),
              //         ),
              //       ],
              //     ),
              //   ),
              // );

              Get.bottomSheet(
                Container(
                  // height: 500,
                  color: Colors.grey.shade300,
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Icon(Icons.home),
                        title: Text("Home"),
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text("Profile"),
                      ),
                      ListTile(
                        leading: Icon(Icons.adb),
                        title: Text("Bug"),
                      ),
                      ListTile(
                        leading: Icon(Icons.add_business),
                        title: Text("Add Shop"),
                      ),
                      ListTile(
                        leading: Icon(Icons.home),
                        title: Text("Home"),
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text("Profile"),
                      ),
                      ListTile(
                        leading: Icon(Icons.adb),
                        title: Text("Bug"),
                      ),
                      ListTile(
                        leading: Icon(Icons.add_business),
                        title: Text("Add Shop"),
                      ),
                      ListTile(
                        leading: Icon(Icons.home),
                        title: Text("Home"),
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text("Profile"),
                      ),
                      ListTile(
                        leading: Icon(Icons.adb),
                        title: Text("Bug"),
                      ),
                      ListTile(
                        leading: Icon(Icons.add_business),
                        title: Text("Add Shop"),
                      ),
                      ListTile(
                        leading: Icon(Icons.home),
                        title: Text("Home"),
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text("Profile"),
                      ),
                      ListTile(
                        leading: Icon(Icons.adb),
                        title: Text("Bug"),
                      ),
                      ListTile(
                        leading: Icon(Icons.add_business),
                        title: Text("Add Shop"),
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Text("Open Bottom Sheet")),
      ),
    );
  }
}
