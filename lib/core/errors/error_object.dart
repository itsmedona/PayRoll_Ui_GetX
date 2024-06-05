/*
import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';

import 'exceptions.dart';

class ErrorObject {
  const ErrorObject({
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  static ErrorObject errorObject({Object? exception}) {
    // exception?.log(name: "ErrorObject");

    Object? exp;

    if (exception is DioException) {
      exp = handleDioException(exception);
    } else {
      exp = exception;
    }

    return handleException(exp);
  }

  static Object? handleDioException(DioException exception) {
    switch (exception.response?.statusCode) {
      case 400:
      case 401:
      case 403:
      case 404:
      case 406:
      case 429:
        return NotFoundException();
      case 500:
        return ServerException();
      case 422:
        return const ErrorObject(title: "Error", message: "error 422");
      default:
        return exception;
    }
  }

  static ErrorObject handleException(Object? exception) {
    switch (exception.runtimeType) {
      case TimeoutException:
        return const ErrorObject(
          title: 'Error Code: TIMEOUT',
          message: 'Request timeout.',
        );
      case FormatException:
        return const ErrorObject(
          title: 'Error Code: FORMAT_EXCEPTION',
          message: 'Invalid input format. Please enter the correct format.',
        );
      case ServerException:
        return const ErrorObject(
          title: 'Error Code: INTERNAL_SERVER_FAILURE',
          message:
              'It seems that the server is not reachable at the moment. Please try again later. If the issue persists, please contact customer support.',
        );
      case DataParsingException:
        return const ErrorObject(
          title: 'Error Code: JSON_PARSING_FAILURE',
          message:
              'It seems that the app needs to be updated to reflect the changed server data structure. If no update is available on the store, please contact customer support.',
        );
      case SocketException:
        return const ErrorObject(
          title: 'NO_CONNECTIVITY',
          message:
              'Please check your internet connectivity or try again later.',
        );
      case NotFoundException:
        return const ErrorObject(
          title: 'Error Code: NOT_FOUND',
          message: 'The requested resource was not found (404).',
        );
      case DioException:
        return const ErrorObject(
          title: 'Error Code: DIO_ERROR',
          message: 'An error occurred during network request.',
        );

      default:
        if (exception is ErrorObject) return exception;
        return const ErrorObject(
          title: 'Error Code: UNKNOWN_ERROR',
          message: "Something went wrong!",
        );
    }
  }
}
*/