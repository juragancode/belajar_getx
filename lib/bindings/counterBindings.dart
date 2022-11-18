import 'package:get/get.dart';
import '../controllers/counterControllers.dart';

class CounterBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CounterConroller());
    // Get.put(CounterConroller());
  }
}
