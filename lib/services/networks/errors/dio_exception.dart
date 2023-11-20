import 'package:dio/dio.dart';
import 'package:templateproject/constants/app_constants.dart';

class DioExceptions implements Exception {
  late String message;
  late int code;

  DioExceptions.fromDioError(DioException dioError) {
    code = dioError.response?.statusCode ?? 3333;

    switch (dioError.type) {
      case DioExceptionType.cancel:
        message = AppConstant.cancelRequest;

        break;
      case DioExceptionType.connectionTimeout:
        message = AppConstant.connectionTimeOut;
        break;
      case DioExceptionType.receiveTimeout:
        message = AppConstant.receiveTimeOut;
        break;
      case DioExceptionType.badResponse:
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
        break;
      case DioExceptionType.sendTimeout:
        message = AppConstant.sendTimeOut;
        break;
      case DioExceptionType.unknown:
        if (dioError.message?.contains("Socket") ?? false) {
          message = AppConstant.socketException;
          break;
        }
        // message = AppConstant.unexpectedError;
        message = AppConstant.socketException;
        break;
      default:
        message = AppConstant.unknownError;
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return AppConstant.badRequest;
      case 401:
        return AppConstant.unauthorized;
      case 403:
        return AppConstant.forbidden;
      case 404:
        return AppConstant.notFound;
      case 422:
        return AppConstant.duplicatePhone;
      case 500:
        return AppConstant.internalServerError;
      case 502:
        return AppConstant.badGateway;
      default:
        return AppConstant.unknownError;
    }
  }

  @override
  String toString() => message;
}
