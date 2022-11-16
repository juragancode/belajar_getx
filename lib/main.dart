import 'package:flutter/material.dart';
import './pages/home.dart';

import 'package:get/get.dart';
import './pages/page1.dart';
import './pages/page2.dart';
import './pages/page3.dart';
import './pages/page4.dart';
import './pages/page5.dart';

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
      routes: {
        "home": (context) => HomePage(),
        "1": (context) => PageSatu(),
        "2": (context) => PageDua(),
        "3": (context) => PageTiga(),
        "4": (context) => PageEmpat(),
        "5": (context) => PageLima(),
      },
      // getPages: [
      //   GetPage(name: "/home", page: () => HomePage()),
      //   GetPage(name: "/1", page: () => PageSatu()),
      //   GetPage(name: "/2", page: () => PageDua()),
      //   GetPage(name: "/3", page: () => PageTiga()),
      //   GetPage(name: "/4", page: () => PageEmpat()),
      //   GetPage(name: "/5", page: () => PageLima()),
      // ],
    );
  }
}
