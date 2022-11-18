import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './pages/home.dart';
import './pages/counter.dart';
import 'controllers/counterControllers.dart';

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
      // routes: {
      //   "counter": (context) => CounterPage(),
      // },
      // initialBinding: BindingsBuilder.put(() => CounterConroller()),
      getPages: [
        GetPage(
            name: "/counter",
            page: () => CounterPage(),
            binding: BindingsBuilder.put(() => CounterConroller()))
      ],
    );
  }
}
