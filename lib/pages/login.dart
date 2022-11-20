import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/loginController.dart';
import 'package:get_storage/get_storage.dart';

class LoginPage extends StatelessWidget {
  final box = GetStorage();
  final LoginController loginC = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    if (box.read("dataRememberMe") != null) {
      loginC.rememberMe.value = true;
      loginC.passC.text = box.read("dataRememberMe")["password"];
      loginC.emailC.text = box.read("dataRememberMe")["email"];
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: loginC.emailC,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            autocorrect: false,
            decoration: InputDecoration(
              labelText: "email",
              border: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(5),
                  ),
            ),
          ),
          SizedBox(height: 10),
          Obx(
            () => TextField(
              controller: loginC.passC,
              textInputAction: TextInputAction.done,
              obscureText: loginC.isHiden.value,
              autocorrect: false,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => loginC.isHiden.toggle(),
                  icon: Icon(Icons.remove_red_eye),
                ),
                labelText: "password",
                border: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(5),
                    ),
              ),
            ),
          ),
          Obx(() => CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: loginC.rememberMe.value,
                onChanged: (value) => loginC.rememberMe.toggle(),
                title: Text(
                  "Remember me!",
                  style: TextStyle(fontSize: 12),
                ),
              )),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => loginC.login(),
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
