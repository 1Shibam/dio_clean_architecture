import 'package:dio_clean_architecture/services/dio_service.dart';
import 'package:dio_clean_architecture/models/post_data_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostNotifier extends StateNotifier<AsyncValue<List<PostDataModel>>> {
  final DioService dioService;
  PostNotifier(this.dioService)
      : super(const AsyncLoading()); //! initial loading state

  //fetch posts
  Future<void> fetchPosts() async {
    //using try and catch

    try {
      state = const AsyncLoading(); //showing loading state

      //getting response
      final response = await dioService.getRequest('/posts');

      if (response != null) {
        final List<PostDataModel> posts =
            (response.data as List<Map<String, dynamic>>)
                .map((json) => PostDataModel.fromJson(json))
                .toList();
        state = AsyncData(posts);
      } else {
        throw Exception('no data found');
      }
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }

  //fetch single post
  Future<void> fetchOnePost(int id) async {
    try {
      state = const AsyncLoading();

      //getting response
      final response = await dioService.getRequest('/posts/$id');

      if (response != null) {
        final PostDataModel singlePost = response.data;
        state = AsyncData([singlePost]);
      }
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}
