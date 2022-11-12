import 'package:get/get.dart';

class homeController extends GetxController {
  // RxInt dataPantau = 0.obs; //reactive state manager => viewnya menggunakan Obx

  var dataPantau = 0; // simple state manager => viewnya menggunakan GetBuilder

  void tambahData() {
    // dataPantau = dataPantau + 1;
    dataPantau++;
    if (dataPantau % 5 == 0) {
      update();
    }

    // update();
  }

  void refreshTampilan() {
    update();
  }
}
