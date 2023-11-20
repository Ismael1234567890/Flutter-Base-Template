import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '/services/networks/apis/rest_api_reponse.dart';
import '/services/networks/errors/dio_exception.dart';

abstract class ApiBase<T> {
  Future<Either<String, List<T>>> getData(Future<Response<dynamic>> apiCallback,
      T Function(Map<String, dynamic> json) getJsonCallback) async {
    try {
      final Response response = await apiCallback;

      final List<T> dataList = List<T>.from(
        json.decode(json.encode(response.data)).map(
              (item) => getJsonCallback(item),
            ),
      );
      return right(dataList);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      return left(errorMessage);
    }
  }

  //Generic Method template for create/update and delete operation on Api classes
  Future<Either<List<String>, ApiResponse>> makeRequestApi(
      Future<Response<dynamic>> apiCallback) async {
    try {
      final response = await apiCallback;
      if (kDebugMode) {
        print("=================================");
        print(response);
      }

      return right(ApiResponse.success(response));
    } on DioException catch (e) {
      if (kDebugMode) {
        print("RequestAPI -Error:  $e");
      }

      final errorMessage = DioExceptions.fromDioError(e).message.toString();
      var statusCode = "";
      try {
        statusCode = e.response?.data["statusCode"];
      } catch (e) {
        return left([errorMessage, statusCode]);
      }

      return left([errorMessage, statusCode]);
    }
  }
}
