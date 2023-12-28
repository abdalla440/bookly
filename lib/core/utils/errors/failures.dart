import 'package:dio/dio.dart';

abstract class Failure {
  String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(String errorMessage) : super(errorMessage);

  factory ServerFailure.fromDioException(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout. (ApiServer)');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout. (ApiServer)');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout. (ApiServer)');
      case DioExceptionType.badCertificate:
        return ServerFailure('Incorrect certificate. (ApiServer)');
      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            exception.response!.statusCode!, exception.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('API Request Was Canceled. (ApiServer)');

      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection.');

      case DioExceptionType.unknown:
        return ServerFailure('Ops Something went wrong , Please try later!');

      default:
        return ServerFailure('Ops Something went wrong , Please try later!');
    }
  }

  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 402) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error, Please try later!');
    } else if (statusCode == 501) {
      return ServerFailure('Ops Something went wrong , Please try later!');
    } else {
      return ServerFailure('API Service Not Available , Please try later!');
    }
  }
}
