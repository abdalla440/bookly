import 'package:dio/dio.dart';

class ApiHelper{
  final _baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;
  ApiHelper(this.dio);

  Future<Map<String,dynamic>> get({required endPoint}) async{
    var response = await dio.get('$_baseUrl$endPoint');
    return response.data;
  }

}