import 'package:flutter/material.dart';
import '../pages/pageDua.dart';

class PageSatu extends StatelessWidget {
  Map<String, dynamic> data = {
    "name": "Bang So He",
    "age": 48,
  };
  Map<String, dynamic> data2 = {
    "name": "Lee Min Hae",
    "age": 34,
  };

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
                "${data['name']} - ${data['age']} tahun",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageDua(data),
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
