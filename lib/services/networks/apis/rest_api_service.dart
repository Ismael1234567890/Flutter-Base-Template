import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '/constants/app_export.dart';
import '/constants/api_path.dart';
import 'interceptors.dart';

/// contains all service to get data from Server
class RestApiServices {
  static final RestApiServices _restApiServices = RestApiServices._internal();

  factory RestApiServices() {
    return _restApiServices;
  }
  RestApiServices._internal();

  static const _timeout = Duration(milliseconds: 5000);

  bool isDebugMode = true;

  set isInDebugMode(bool value) {
    isDebugMode = value;
  }

  bool get isInDebugMode {
    return isDebugMode;
  }

  Environment _env = _Prod();
  Environment get env => _env;

  Dio get dio => _dio();

  Dio _dio() {
    final options = BaseOptions(
        baseUrl: _env.baseUrl,
        connectTimeout: _timeout,
        receiveTimeout: _timeout,
        headers: {
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Methods": "GET,PUT,PATCH,POST,DELETE",
          "Access-Control-Allow-Headers":
              "Origin, X-Requested-With, Content-Type, Accept",
        });

    var dio = Dio(options);

    dio.interceptors.add(requestInterceptor(dio, _env));
    dio.interceptors.add(responseInterceptor(dio, _env));
    dio.interceptors.add(errorInterceptor(dio, _env));
    if (isDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90),
      );
    }
    return dio;
  }

  void setEnvironment(EnvironmentType type) {
    switch (type) {
      case EnvironmentType.dev:
        _env = _Dev();
        isDebugMode = true;
        break;
      case EnvironmentType.prod:
        _env = _Prod();
        isDebugMode = false;
        break;
      default:
        _env = _Local();
        isDebugMode = false;
    }
  }

  dispose() {
    dio.close();
  }
}

class _Dev extends Environment {
  @override
  EnvironmentType get type => EnvironmentType.dev;
  @override
  String get baseUrl => ApiPath.baseUrlDev;
  @override
  String get apiKey => "";
}

class _Prod extends Environment {
  @override
  EnvironmentType get type => EnvironmentType.prod;
  @override
  String get baseUrl => ApiPath.baseUrlProd;
  @override
  String get apiKey => "";
}

class _Local extends Environment {
  @override
  EnvironmentType get type => EnvironmentType.local;
  @override
  String get baseUrl => ApiPath.baseUrlLocal;
  @override
  String get apiKey => "";
}

abstract class Environment {
  EnvironmentType get type;
  String get apiKey;
  String get baseUrl;
}
