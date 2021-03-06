import 'package:dio/dio.dart';

class DessertService {
  static String _url =
      'https://my-json-server.typicode.com/mahmoud-eslami/dessert_time';

  static Dio _dio;

  static Dio getInstance() {
    if (_dio == null) {
      BaseOptions options = BaseOptions(
        baseUrl: _url,
        connectTimeout: 5000,
        receiveTimeout: 2000,
      );
      _dio = Dio(options);
      _dio.interceptors.add(
        LogInterceptor(
          error: true,
          request: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true,
          requestBody: true,
        ),
      );
    }
    return _dio;
  }
}
