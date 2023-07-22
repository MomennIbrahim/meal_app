import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with api server');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive Timeout');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('errMessage');

      case DioExceptionType.unknown:
        if(dioException.message!.contains('SocketException')){
          return ServerFailure('Connection failed due to internet connection');
        }
        return ServerFailure('Unexpected error,please try later!');

      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error, Check your internet');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, Please try later!');
    } else {
      return ServerFailure('Opps there was an error, Please try later!');
    }
  }
}
