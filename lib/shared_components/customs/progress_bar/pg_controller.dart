import 'package:get/get.dart';

class ProgressController extends GetxController {
  var progress = 0.0.obs;

  void updateProgress(double newProgress) {
    progress.value = newProgress;
  }
}
