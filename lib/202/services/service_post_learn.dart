import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/services/post_model.dart';
import 'package:flutter_full_learn/202/services/post_service.dart';

class ServicePostLearnView extends StatefulWidget {
  const ServicePostLearnView({Key? key}) : super(key: key);

  @override
  State<ServicePostLearnView> createState() => _ServiceLearnViewState();
}

class _ServiceLearnViewState extends State<ServicePostLearnView> {
  String name = "dneme";
  List<PostModel>? _items;
  bool _isLoading = false;
  final PostService _postService = PostService();

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _addItemToService(PostModel postModel) async {
    final responseStatus = await _postService.addItemToService(postModel);
    if (responseStatus) {
      setState(() {
        name = "Başarılı";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name),
          actions: [
            _isLoading
                ? CircularProgressIndicator.adaptive()
                : SizedBox.shrink()
          ],
        ),
        body: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Title"),
              controller: _titleController,
            ),
            SizedBox(height: 10),
            TextField(
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(labelText: "Body"),
              controller: _bodyController,
            ),
            SizedBox(height: 10),
            TextField(
                controller: _userIdController,
                keyboardType: TextInputType.number,
                autofillHints: [AutofillHints.creditCardNumber],
                decoration: InputDecoration(labelText: "UserId")),
            TextButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        if (_titleController.text.isNotEmpty &&
                            _bodyController.text.isNotEmpty &&
                            _userIdController.text.isNotEmpty) {
                          final model = PostModel(
                              body: _bodyController.text,
                              title: _titleController.text,
                              userId:
                                  int.tryParse(_userIdController.text));
                          _addItemToService(model);
                        }
                      },
                child: Text("Send"))
          ],
        ));
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
