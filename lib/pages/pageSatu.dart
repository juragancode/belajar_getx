import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/pageDua.dart';
import '../controllers/pageSatuController.dart';

class PageSatu extends StatelessWidget {
  final PageSatuC = Get.put(PageSatuController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Page 1",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${PageSatuC.data['name']} - ${PageSatuC.data['age']} tahun",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageDua(),
                      ),
                    );
                  },
                  child: Icon(Icons.navigate_next))
            ],
          ),
        ),
      ),
    );
  }
}
