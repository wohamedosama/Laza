// ignore_for_file: avoid_print

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:laza/core/networking/error_model.dart';

part 'network_exceptions.freezed.dart';

@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  const factory NetworkExceptions.unauthorizedRequest(String reason) =
      UnauthorizedRequest;

  const factory NetworkExceptions.badRequest(String reason) = BadRequest;

  const factory NetworkExceptions.notFound(String reason) = NotFound;

  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  const factory NetworkExceptions.unprocessableEntity(String reason) =
      UnprocessableEntity;

  const factory NetworkExceptions.conflict() = Conflict;

  const factory NetworkExceptions.alreadyRegistered() = AlreadyRegistered;

  const factory NetworkExceptions.internalServerError() = InternalServerError;

  const factory NetworkExceptions.notImplemented() = NotImplemented;

  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  const factory NetworkExceptions.formatException() = FormatException;

  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  static NetworkExceptions handleResponse(Response? response) {
    try {
      // Try to parse the response data as a list of errors
      if (response?.data is List) {
        List<ErrorModel> listOfErrors = List.from(
          response?.data ?? [],
        ).map((e) => ErrorModel.fromJson(e)).toList();
        String allErrors = listOfErrors
            .map(
              (e) => "${e.field ?? 'Error'}: ${e.message ?? 'Unknown error'}",
            )
            .join(", ");

        int statusCode = response?.statusCode ?? 0;
        return _getExceptionForStatusCode(statusCode, allErrors);
      }
      // Handle response data as map
      else if (response?.data is Map) {
        String errorMessage =
            response?.data['message'] ??
            response?.data['error'] ??
            response?.data.toString() ??
            'Unknown error';

        // Check if the error message indicates user already registered
        if (errorMessage.toLowerCase().contains(
              'one or more errors occurred',
            ) ||
            errorMessage.toLowerCase().contains('already registered') ||
            errorMessage.toLowerCase().contains('already exists') ||
            errorMessage.toLowerCase().contains('user already')) {
          return const NetworkExceptions.alreadyRegistered();
        }

        int statusCode = response?.statusCode ?? 0;
        return _getExceptionForStatusCode(statusCode, errorMessage);
      }
      // Handle string response
      else {
        String errorMessage = response?.data?.toString() ?? 'Unknown error';

        // Check if the error message indicates user already registered
        if (errorMessage.toLowerCase().contains(
              'one or more errors occurred',
            ) ||
            errorMessage.toLowerCase().contains('already registered') ||
            errorMessage.toLowerCase().contains('already exists') ||
            errorMessage.toLowerCase().contains('user already')) {
          return const NetworkExceptions.alreadyRegistered();
        }

        int statusCode = response?.statusCode ?? 0;
        return _getExceptionForStatusCode(statusCode, errorMessage);
      }
    } catch (e) {
      print('Error parsing response: $e');
      int statusCode = response?.statusCode ?? 0;
      return _getExceptionForStatusCode(
        statusCode,
        response?.data?.toString() ?? 'Unknown error',
      );
    }
  }

  static NetworkExceptions _getExceptionForStatusCode(
    int statusCode,
    String message,
  ) {
    switch (statusCode) {
      case 400:
        return NetworkExceptions.badRequest(message);
      case 401:
      case 403:
        return NetworkExceptions.unauthorizedRequest(message);
      case 404:
        return NetworkExceptions.notFound(message);
      case 409:
        return const NetworkExceptions.conflict();
      case 408:
        return const NetworkExceptions.requestTimeout();
      case 422:
        return NetworkExceptions.unprocessableEntity(message);
      case 500:
        return const NetworkExceptions.internalServerError();
      case 503:
        return const NetworkExceptions.serviceUnavailable();
      default:
        return NetworkExceptions.defaultError(
          "Received invalid status code: $statusCode - $message",
        );
    }
  }

  static NetworkExceptions getDioException(error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
              networkExceptions = const NetworkExceptions.requestCancelled();
              break;
            case DioExceptionType.connectionTimeout:
              networkExceptions = const NetworkExceptions.requestTimeout();
              break;
            case DioExceptionType.unknown:
              networkExceptions =
                  const NetworkExceptions.noInternetConnection();
              break;
            case DioExceptionType.receiveTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioExceptionType.badResponse:
              networkExceptions = NetworkExceptions.handleResponse(
                error.response,
              );
              break;
            case DioExceptionType.sendTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioExceptionType.badCertificate:
              networkExceptions = const NetworkExceptions.unableToProcess();
              break;
            case DioExceptionType.connectionError:
              networkExceptions =
                  const NetworkExceptions.noInternetConnection();
              break;
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException catch (_) {
        return const NetworkExceptions.formatException();
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return const NetworkExceptions.unableToProcess();
      } else {
        return const NetworkExceptions.unexpectedError();
      }
    }
  }

  static String getErrorMessage(NetworkExceptions networkExceptions) {
    var errorMessage = "";
    networkExceptions.when(
      notImplemented: () {
        errorMessage = "Not Implemented";
      },
      requestCancelled: () {
        errorMessage = "Request Cancelled";
      },
      internalServerError: () {
        errorMessage = "Internal Server Error";
      },
      notFound: (String reason) {
        errorMessage = reason;
      },
      serviceUnavailable: () {
        errorMessage = "Service unavailable";
      },
      methodNotAllowed: () {
        errorMessage = "Method Not Allowed";
      },
      badRequest: (String reason) {
        errorMessage = reason;
      },
      unauthorizedRequest: (String error) {
        errorMessage = error;
      },
      unprocessableEntity: (String error) {
        errorMessage = error;
      },
      unexpectedError: () {
        errorMessage = "Unexpected error occurred";
      },
      requestTimeout: () {
        errorMessage = "Connection request timeout";
      },
      noInternetConnection: () {
        errorMessage = "No internet connection";
      },
      conflict: () {
        errorMessage = "Error due to a conflict";
      },
      alreadyRegistered: () {
        errorMessage =
            "This account is already registered. Please sign in instead.";
      },
      sendTimeout: () {
        errorMessage = "Send timeout in connection with API server";
      },
      unableToProcess: () {
        errorMessage = "Unable to process the data";
      },
      defaultError: (String error) {
        errorMessage = error;
      },
      formatException: () {
        errorMessage = "Unexpected error occurred";
      },
      notAcceptable: () {
        errorMessage = "Not acceptable";
      },
    );
    return errorMessage;
  }
}
