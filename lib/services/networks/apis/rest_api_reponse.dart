import 'package:dio/dio.dart';

class ApiResponse<T> {
  int? code;
  T? body;
  bool successful = false;
  DioException? error;
  dynamic data;

  ApiResponse.success(Response<T> response) {
    code = response.statusCode ?? 0;
    body = DataResponse.fromJson(response.data as Map<String, dynamic>).data;
    // response.data;
    successful = true;
  }

  ApiResponse.failure(DioException e, {String message = ""}) {
    code = e.response?.statusCode ?? 0;
    successful = false;
    error = e;
  }
}

class DataResponse<T> {
  T? data;

  DataResponse({this.data});

  DataResponse.fromJson(Map<String, dynamic> json) {
    data = json as T?;
  }
}
