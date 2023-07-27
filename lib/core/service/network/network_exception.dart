import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NetworkException with DioMixin {
  NetworkException._init();

  static final NetworkException _instance = NetworkException._init();

  static NetworkException get instance => _instance;

  void Function(DioException exception, ErrorInterceptorHandler handler)
      onError() {
    return (DioException exception, handler) async {
      switch (exception.type) {
        case DioExceptionType.cancel:
          debugPrint('Request to API server was cancelled');
          return handler.next(exception);
        case DioExceptionType.connectionTimeout:
          debugPrint('Connection timeout with API server');
          return handler.next(exception);
        case DioExceptionType.sendTimeout:
          debugPrint('Send timeout in connection with API server');
          return handler.next(exception);
        case DioExceptionType.receiveTimeout:
          debugPrint('Receive timeout in connection with API server');
          return handler.next(exception);
        case DioExceptionType.badCertificate:
          debugPrint('Bad certificate with API server');
          return handler.next(exception);
        case DioExceptionType.badResponse:
          debugPrint('Bad response');
          return handler.next(exception);
        case DioExceptionType.connectionError:
          debugPrint('Connection error with API server');
          return handler.next(exception);
        case DioExceptionType.unknown:
          if (exception.error.toString().contains("SocketException")) {
            debugPrint('No Internet Or Wrong Host Request');
            return handler.next(exception);
          } else {
            debugPrint('Unknown error');
            return handler.next(exception);
          }
        default:
          return handler.next(exception);
      }
    };
  }
}
