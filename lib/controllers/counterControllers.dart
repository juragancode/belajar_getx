import 'package:get/get.dart';

class CounterConroller extends GetxController {
  RxInt data = 0.obs;

  void increment() => data++;
  void decrement() => data--;
}
