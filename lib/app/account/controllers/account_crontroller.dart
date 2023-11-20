import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:templateproject/configs/injectiondepency/injection.dart';
import 'package:templateproject/data/models/user.dart';
import 'package:templateproject/data/repositories/auth_repository.dart';
import '/services/networks/apis/api_controller_operation.dart';

enum LoginState { loginInitial, authenticated, disconnect }

enum LoginEvent { verification, logoutClicked }

class AccountController extends GetxController
    with ApiControllerOperationMixin {
  final authUserResponse = sl<AuthRepository>();
  Rx<LoginEvent> loginEvent = LoginEvent.verification.obs;

  Rx<String> email = "".obs;
  Rx<String> password = "".obs;

  Rx<UserAccount>? userAccount;

  @override
  void onInit() {
    super.onInit();
    ever(apiStatus, fireState);
  }

  void login() {
    if (kDebugMode) {
      print(email.value);
      print(password.value);
    }

    requestBaseController(authUserResponse.login(email.value, password.value));
  }

  void signUp() {}

  mapEventToState(LoginEvent event, ApiState state) {
    switch (event) {
      case LoginEvent.verification:
        switch (state) {
          case ApiState.loading:
            break;

          case ApiState.success:
            if (kDebugMode) {
              print("========ca marche=======");
              print("data: $dataResponse");
            }
            break;
          case ApiState.failure:
            break;
          default:
        }
        break;

      default:
    }
  }

  fireState(ApiState loginApiState) {
    mapEventToState(loginEvent.value, loginApiState);
  }
}
