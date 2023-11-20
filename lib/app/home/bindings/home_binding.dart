import 'package:get/get.dart';
import '/app/home/controllers/home_crontroller.dart';

class HomeClientBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
