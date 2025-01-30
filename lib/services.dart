// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

import 'package:dio_clean_architecture/api.dart';

class DioService {
  //create dio instance with base url!!
  final Dio dioInstance;
  DioService(this.dioInstance) {
    dioInstance.options = BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 3));
  }

  Future<Response?> getRequest(String url) async {
    try {
      final response = dioInstance.get(url);
      return response;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        throw 'connection time out, Please check you internet connection';
      } else if (e.type == DioExceptionType.receiveTimeout) {
        throw 'server took too long to respond, Please try again later';
      } else {
        throw 'Something went wrong: $e';
      }
    }
  }
}
