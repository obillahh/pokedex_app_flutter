import 'package:dio/dio.dart';

class ApiException implements Exception {
  final String message;

  ApiException(this.message);

  factory ApiException.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ApiException('Connection Timeout');
      case DioExceptionType.sendTimeout:
        return ApiException('Send Timeout');
      case DioExceptionType.receiveTimeout:
        return ApiException('Receive Timeout');
      case DioExceptionType.badResponse:
        return ApiException('Received invalid status code: ${dioError.response?.statusCode}');
      case DioExceptionType.cancel:
        return ApiException('Request to API server was cancelled');
      case DioExceptionType.connectionError:
        return ApiException('Connection to API server failed due to internet connection');
      default:
        return ApiException('Something went wrong');
    }
  }

  @override
  String toString() => 'ApiException: $message';
}
