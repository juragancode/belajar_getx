import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counterControllers.dart';

class CounterPage extends StatelessWidget {
  CounterConroller counterC = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Counter Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "${counterC.data}",
                  style: TextStyle(
                    fontSize: 150,
                  ),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => counterC.increment(),
                  child: Text("-"),
                ),
                ElevatedButton(
                  onPressed: () => counterC.decrement(),
                  child: Text("+"),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.orange.shade900,
        onPressed: () => Get.back(),
      ),
    );
  }
}
