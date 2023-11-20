import 'package:get/get.dart';

class BNavigationController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  // Add any other navigation or status management logic here if necessary
}
