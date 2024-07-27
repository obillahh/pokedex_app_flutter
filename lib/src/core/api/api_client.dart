import 'package:dio/dio.dart';
import 'package:pokedex_application/src/core/api/api_endpoints.dart';
import 'package:pokedex_application/src/core/api/api_exceptions.dart';

class ApiClient {
  final Dio dio;

  ApiClient({String baseUrl = ApiEndpoints.baseUrl})
      : dio = Dio(BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 3),
        ));

  Future<Response> get(String endpoint, {Map<String, dynamic>? params}) async {
    try {
      return await dio.get(
        endpoint,
        queryParameters: params,
      );
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }

  Future<Response> post(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      return await dio.post(endpoint, data: data);
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }

  Future<Response> put(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      return await dio.put(endpoint, data: data);
    } on DioException catch (e) {
      throw ApiException.fromDioError(e);
    }
  }
}
