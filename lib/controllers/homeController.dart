import 'dart:ffi';

import 'package:get/get.dart';

class homeController extends GetxController {
  RxInt dataPantau = 0.obs;

  void change() => dataPantau++;

  @override
  void onInit() {
    // ever(dataPantau, (data) => print("Perubahan"));
    // once(dataPantau, (data) => print("hanya memantau 1x perubahan"));
    // debounce(
    //   dataPantau,
    //   (data) => print("Pantau 2 seconds"),
    //   time: Duration(seconds: 2),
    // );
    interval(
      dataPantau,
      (data) => print("Pantau 2 seconds"),
      time: Duration(seconds: 2),
    );
    super.onInit();
  }
}
