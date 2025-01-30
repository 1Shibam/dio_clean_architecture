import 'package:dio_clean_architecture/models/post_data_model.dart';
import 'package:dio_clean_architecture/services/dio_service.dart';
import 'package:dio_clean_architecture/state/post_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//Dio service provider

final dioServiceProvider = Provider<DioService>((ref) => DioService());

//Posts notifier provider

final postNotifierProvider =
    StateNotifierProvider<PostNotifier, AsyncValue<List<PostDataModel>>>(
        (ref) => PostNotifier(ref.watch(dioServiceProvider)));
