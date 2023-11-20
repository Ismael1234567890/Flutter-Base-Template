import 'package:get/route_manager.dart';
import '/configs/routes/page_name.dart';

class MyNavigation {
  static void goToHome() {
    Get.offAllNamed(MyRoutes.initial);
  }

  static void goToLogin() {
    Get.offAllNamed(MyRoutes.login);
  }

  static void goTo404Page() {
    Get.offAllNamed(MyRoutes.unknownRoute);
  }
}
