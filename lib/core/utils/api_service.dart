import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://food2fork.ca/';
  late final Dio _dio;
  ApiService(this._dio);

  Future<Map<String, dynamic>> getData(
      {required String endPoint, Map<String, dynamic>? query}) async {

    _dio.options.headers = {
      'Authorization' : 'Token 9c8b06d329136da358c2d00e76946b0111ce2c48'
    };
    var response = await _dio.get('$_baseUrl$endPoint', queryParameters: query);
    return response.data;
  }
}
