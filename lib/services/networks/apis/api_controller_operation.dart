import 'package:dartz/dartz.dart';
import '/constants/app_export.dart';
import '/services/networks/apis/rest_api_reponse.dart';

enum ApiState { loading, failure, success }

mixin ApiControllerOperationMixin<T> {
  Rx<ApiState> apiStatus = ApiState.loading.obs;
  Rx<String> errorMessage = "".obs;
  Rx<String> statusCode = "".obs;
  T? dataResponse;

  //Method template for create/update and delete operation on GetX controller
  void requestBaseController(
    Future<Either<List<String>, ApiResponse>> apiCallback,
  ) async {
    apiStatus.value = ApiState.loading;
    Either<List<String>, ApiResponse> failureOrSuccess = await apiCallback;

    failureOrSuccess.fold((l) {
      errorMessage = l.first.obs; // first Element with msg
      statusCode = l.last.obs; // Second Element with status code
      apiStatus.value = ApiState.failure;
      Get.snackbar("Message", errorMessage.value,
          colorText: Colors.white,
          icon: const Icon(
            Icons.add_alert_rounded,
            color: Colors.white,
          ),
          duration: const Duration(seconds: 5));
    }, (r) {
      dataResponse = r.body;
      apiStatus.value = ApiState.success;
    });
  }
}
