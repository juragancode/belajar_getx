import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/homeController.dart';

class HomePage extends StatelessWidget {
  final homeC = Get.put(homeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "State Management GetX",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(
            //   () => Text(
            //     "${homeC.dataPantau}",
            //     style: TextStyle(
            //       fontSize: 200,
            //     ),
            //   ),
            // ),
            GetBuilder<homeController>(
              builder: (controller) => Text(
                "${controller.dataPantau}",
                style: TextStyle(
                  fontSize: 200,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                homeC.tambahData();
              },
              child: Icon(Icons.add),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                homeC.refreshTampilan();
              },
              child: Text("Refresh"),
            ),
          ],
        ),
      ),
    );
  }
}
