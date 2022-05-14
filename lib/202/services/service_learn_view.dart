import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/services/post_model.dart';

class ServiceLearnView extends StatefulWidget {
  const ServiceLearnView({Key? key}) : super(key: key);

  @override
  State<ServiceLearnView> createState() => _ServiceLearnViewState();
}

class _ServiceLearnViewState extends State<ServiceLearnView> {
  List<PostModel>? _items;
  bool _isLoading = false;
  late final Dio _networkManager;

  final _baseUrl = "https://jsonplaceholder.typicode.com/";

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();

    _networkManager = Dio(BaseOptions(baseUrl: _baseUrl));

    fetchPostItem();
  }

  Future<void> fetchPostItem() async {
    _changeLoading();
    final response = await _networkManager.get("posts");

    if (response.statusCode == HttpStatus.ok) {
      final _data = response.data;

      if (_data is List) {
        setState(() {
          _items = _data.map((e) => PostModel.fromJson(e)).toList();
        });
      }
      _changeLoading();
    }
  }

  Future<void> fetchPostItemAdvance() async {
    _changeLoading();
    final response = await _networkManager.get("posts");

    if (response.statusCode == HttpStatus.ok) {
      final _data = response.data;

      if (_data is List) {
        setState(() {
          _items = _data.map((e) => PostModel.fromJson(e)).toList();
        });
      }
      _changeLoading();
    }
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dfdsf"),
        actions: [_isLoading ? CircularProgressIndicator.adaptive() : SizedBox.shrink()],
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return _PostCard(model: _items?[index]);
        },
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required PostModel? model,
  })  : _model = model,
        super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ""),
        subtitle: Text(_model?.body ?? ""),
      ),
    );
  }
}
