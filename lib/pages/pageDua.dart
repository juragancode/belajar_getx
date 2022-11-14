import 'package:flutter/material.dart';
import '../pages/pageSatu.dart';

class PageDua extends StatelessWidget {
  PageDua(this.dataPageDua);
  PageSatu dataPageDua;

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
                "${dataPageDua.data['name']} - ${dataPageDua.data['age']} tahun",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
