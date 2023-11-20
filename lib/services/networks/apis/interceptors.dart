import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get/route_manager.dart';
import '../../../configs/injectiondepency/injection.dart';
import '/configs/routes/page_name.dart';
import '/services/locals/local_storage_service.dart';
import '/services/networks/apis/rest_api_service.dart';

InterceptorsWrapper requestInterceptor(Dio dio, Environment env) =>
    InterceptorsWrapper(onRequest: (options, handler) {
      if (sl.get<LocalStorageServices>().getToken != null) {
        options.headers["Authorization"] =
            "Bearer ${sl.get<LocalStorageServices>().getToken}";
      }

      return handler.next(options);
    });

InterceptorsWrapper responseInterceptor(Dio dio, Environment env) =>
    InterceptorsWrapper(onResponse: (Response response, handler) {
      if (RestApiServices().isInDebugMode) {
        response.headers.forEach((k, v) {
          for (var s in v) {
            log("$k , $s");
          }
        });
      }
      return handler.next(response);
    });

InterceptorsWrapper errorInterceptor(Dio dio, Environment env) =>
    InterceptorsWrapper(
      onError: (DioException dioError, ErrorInterceptorHandler handler) async {
        // if (kDebugMode) {
        //   print("Api - dioError Error");
        //   print("Api - ${dioError.response?.statusCode}");
        //   print("Api - ${dioError.error}");
        //   print("Api - ${dioError.response}");
        //   print("-----REFRESH CODE :: ${dioError.response?.statusCode}-----");
        //   print(
        //       "-----REFRESH Method :: ${dio.options.extra.containsKey("refreshToken")}--");
        // }

        // Refresh Token Interceptor
        if ((dioError.response?.statusCode == 401)) {
          sl<LocalStorageServices>().removeToken();
          sl<LocalStorageServices>().clear();
          Get.offAllNamed(MyRoutes.login);
        }
        return handler.next(dioError);
      },
    );
