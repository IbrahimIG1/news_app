import 'package:dio/dio.dart';

class DioHelper
{
  static Dio dio = Dio();
  static init()
  {
    dio = Dio(BaseOptions
    (
      baseUrl:'https://newsapi.org/',
      receiveDataWhenStatusError: true,
    ));
  }
}