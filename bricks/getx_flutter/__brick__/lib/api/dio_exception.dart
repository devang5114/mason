import 'dart:io';

import 'package:dio/dio.dart';

String onDioException(DioException exception) {
  if (exception is SocketException) {
    return 'You Are Offline';
  }
  switch (exception.type) {
    case DioExceptionType.cancel:
      return "Request to the server was canceled";
    case DioExceptionType.connectionTimeout:
      return 'Connection timed out.';
    case DioExceptionType.sendTimeout:
      return 'Request send timeout.';
    case DioExceptionType.receiveTimeout:
      return 'Receiving timeout occurred.';
    case DioExceptionType.badCertificate:
      return '';
    case DioExceptionType.badResponse:
      return 'Bad Response';
    case DioExceptionType.connectionError:
      return 'Connection Error';
    case DioExceptionType.unknown:
      return 'Something went wrong';
    default:
      return 'Something went wrong';
  }
}

String handleStatusCode(int? statusCode) {
  switch (statusCode) {
    case 400:
      return 'Bad request.';
    case 401:
      return 'Authentication failed.';
    case 403:
      return 'The authenticated user is not allowed to access the specified API endpoint.';
    case 404:
      return 'The requested resource does not exist.';
    case 405:
      return 'Method not allowed. Please check the Allow header for the allowed HTTP methods.';
    case 415:
      return 'Unsupported media type. The requested content type or version number is invalid.';
    case 422:
      return 'Data validation failed.';
    case 429:
      return 'Too many requests.';
    case 500:
      return 'Internal server error.';
    default:
      return 'Oops something went wrong!';
  }
}
