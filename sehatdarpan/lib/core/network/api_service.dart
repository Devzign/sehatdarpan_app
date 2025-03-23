import 'dart:convert';
import 'package:dio/dio.dart';
import '../config/app_config.dart';
import '../storage/local_storage.dart';

class ApiService {
  late Dio _dio;

  ApiService() {
    _dio = Dio(BaseOptions(
      baseUrl: AppConfig.baseUrl,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ));

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        String? token = await LocalStorage.getToken();
        if (token != null) {
          options.headers["Authorization"] = "Bearer $token";
        }
        options.headers["Content-Type"] = "application/json";
        print('ApiService: Request - ${options.method} ${options.uri}');
        return handler.next(options);
      },
      onResponse: (response, handler) {
        print('ApiService: Response - ${response.statusCode} ${response.requestOptions.uri}');
        return handler.next(response);
      },
      onError: (DioException error, handler) {
        print('ApiService: Error - ${error.message} ${error.requestOptions.uri}');
        return handler.next(error);
      },
    ));
  }

  Future<Response> get(String endpoint,
      {Map<String, dynamic>? queryParams, bool authRequired = true}) async {
    try {
      Response response =
      await _dio.get(endpoint, queryParameters: queryParams);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> post(String endpoint,
      {dynamic data, bool authRequired = true}) async {
    try {
      Response response = await _dio.post(endpoint, data: jsonEncode(data));
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> put(String endpoint,
      {dynamic data, bool authRequired = true}) async {
    try {
      Response response = await _dio.put(endpoint, data: jsonEncode(data));
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> delete(String endpoint, {bool authRequired = true}) async {
    try {
      Response response = await _dio.delete(endpoint);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}

