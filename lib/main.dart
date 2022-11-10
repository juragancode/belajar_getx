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
  final myController = Get.put(alfaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("GetX"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                "${myController.data.value}",
                style: TextStyle(fontSize: 200),
              );
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      myController.decrement();
                    },
                    child: Icon(Icons.remove)),
                ElevatedButton(
                    onPressed: () {
                      myController.increment();
                    },
                    child: Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class alfaController extends GetxController {
  var data = 0.obs;
//   increment() => data++;
//   decrement() => data--;

  increment() {
    data = data + 1;
  }

  decrement() {
    data = data - 1;
  }
}
