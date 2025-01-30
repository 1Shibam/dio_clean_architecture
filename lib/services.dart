// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:dio_clean_architecture/api.dart';

void printSomething(int id) async {
  final dio = Dio();
  final response = await dio.get('$apiUrl/$id');
  print(response.data);
}
