import 'package:get/get.dart';
import '/app/account/controllers/account_crontroller.dart';

class AccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountController());
  }
}
