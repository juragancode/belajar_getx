import 'package:get/get.dart';

class homeController extends GetxController {
  RxInt dataInt = 0.obs;
  RxString dataString = "data".obs;
  RxDouble dataDouble = 0.0.obs;
  RxBool dataBool = false.obs;
  RxList<int> dataList = [1, 2, 3].obs;
  RxSet<int> dataSet = {1, 2, 3}.obs;
  RxMap<String, int> myMap = <String, int>{
    "Matematika": 99,
    "B Indonesia": 91,
    "PKN": 92,
    "B Inggris": 93,
    "B Rusia": 94,
    "Penjaskes": 95,
    "Musik": 96,
    "Pemprograman": 97,
    "Desain": 98,
    "Strategi": 98,
  }.obs;

  int angkaSelanjutnyaList = 4;
  int angkaSelanjutnyaSet = 4;

  void tambahDataList() {
    dataList.add(angkaSelanjutnyaList);
    angkaSelanjutnyaList++;
  }

  void tambahDataSet() {
    dataSet.add(angkaSelanjutnyaSet);
    angkaSelanjutnyaSet++;
  }

  void changeDataBool() {
    // if (dataBool.value == false) {

    // if (dataBool.isFalse) {
    //   dataBool.value = true;
    // } else {
    //   dataBool.value = false;
    // }

    dataBool.toggle();
  }

  void updateDataString() {
    dataString.value = "data(updated)";
  }

  void resetDataString() {
    dataString.value = "data";
  }

  void incrementInt() => dataInt++;
  void decrementInt() => dataInt--;

  void incrementDouble() => dataDouble.value = dataDouble.value +
      0.10000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  void decrementDouble() => dataDouble.value = dataDouble.value -
      0.10000000000000000000000000000000000000000000000000000000000000000000000000000000000;

  void updateDataBool() {
    dataBool.value = true;
  }

  void resetDataBool() {
    dataBool.value = false;
  }
}
