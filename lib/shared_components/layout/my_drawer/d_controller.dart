import 'package:get/get.dart';

class MyDrawerController extends GetxController {
  var currentScreen = 'home'.obs;

  void navigateTo(String screen) {
    currentScreen.value = screen;
    // Ajoutez la logique de navigation, par exemple, en utilisant Get.to() si nécessaire
    Get.back(); // Closes Drawer after selection
  }

  // Add other methods if necessary...
}
