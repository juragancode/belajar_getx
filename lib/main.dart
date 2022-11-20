import 'package:belajar_getx/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/login.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      getPages: [
        GetPage(
          name: "/login",
          page: () => LoginPage(),
        ),
        GetPage(
          name: "/home",
          page: () => HomePage(),
        ),
      ],
    );
  }
}
