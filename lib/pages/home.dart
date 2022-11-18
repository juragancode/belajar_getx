import 'package:belajar_getx/pages/counter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counterControllers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bindings Builder GetX"),
      ),
      body: Center(
        child: ElevatedButton(
            // onPressed: () => Get.to(() => CounterPage(),
            //     binding: BindingsBuilder.put(() => CounterConroller())),
            onPressed: () => Get.toNamed("/counter"),
            child: Text("Counter Page >>")),
      ),
    );
  }
}
