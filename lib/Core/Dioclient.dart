import 'package:dio/dio.dart';

class Dioclient {
  final _dio = Dio();

  Dioclient() {
    _dio.options.baseUrl = 'https://pokeapi.co/api/v2/';
    _dio.options.connectTimeout = const Duration(seconds: 5);
    _dio.options.receiveTimeout = const Duration(seconds: 3);
  }

  Dio get dio => _dio;
}
