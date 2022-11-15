import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/pageSatuController.dart';

// import './pages/home.dart';
import './pages/pageSatu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final PageSatuC = Get.lazyPut(() => PageSatuController());
  // final PageSatuC = Get.put(PageSatuController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageSatu(),
    );
  }
}
