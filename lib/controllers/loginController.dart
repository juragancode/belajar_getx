import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  TextEditingController passC = TextEditingController();
  TextEditingController emailC = TextEditingController();

  RxBool isHiden = true.obs;
  RxBool rememberMe = false.obs;

  void login() async {
    final box = GetStorage();
    if (passC.text == "admin" && emailC.text == "admin@gmail.com") {
      if (box.read("dataRememberMe") != null) {
        box.remove("dataRememberMe");
      }
      if (rememberMe.isTrue) {
        // save data email & password in local memory hp
        box.write(
          "dataRememberMe",
          {
            "password": passC.text,
            "email": emailC.text,
          },
        );
      }
      Get.offAllNamed("/home");
    } else {
      Get.defaultDialog(
        title: "Terjadi Kesalahan!",
        middleText: "email & password salah!",
      );
    }
  }

  void logout() {
    Get.offAllNamed("/login");
  }
}
