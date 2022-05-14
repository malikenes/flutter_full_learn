import 'dart:io';

import 'package:dio/dio.dart';

import 'post_model.dart';

class PostService {
  final Dio _networkManager;

  PostService()
      : _networkManager = Dio(
            BaseOptions(baseUrl: "https://jsonplaceholder.typicode.com/"));
  Future<bool> addItemToService(PostModel postModel) async {
    final response = await _networkManager.post("posts", data: postModel);
    return response.statusCode == HttpStatus.created;
  }

  Future<List<PostModel>?> fetchPostItem() async {
    final response = await _networkManager.get("posts");

    if (response.statusCode == HttpStatus.ok) {
      final _data = response.data;

      if (_data is List) {
        return _data.map((e) => PostModel.fromJson(e)).toList();
      } else {
        return null;
      }
    }
  }

  Future<List<PostModel>?> fetchPostItemAdvance() async {
    final response = await _networkManager.get("posts");

    if (response.statusCode == HttpStatus.ok) {
      final _data = response.data;

      if (_data is List) {
        return _data.map((e) => PostModel.fromJson(e)).toList();
      } else {
        return null;
      }
    }
  }
}
