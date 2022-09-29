import 'package:flutter/material.dart';
import 'package:flutter_full_learn/303/mobx_image_picker/viewmodel/image_upload_view_model.dart';
import 'package:flutter_full_learn/product/util/image_upload.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MobxImageUpload extends StatefulWidget {
  const MobxImageUpload({Key? key}) : super(key: key);

  @override
  State<MobxImageUpload> createState() => _MobxImageUploadState();
}

class _MobxImageUploadState extends State<MobxImageUpload> {
  final _imageUploadViewModel = ImageUploadViewModel();
  final _imageUploadManager = ImageUploadManager();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Upload'),
        actions: [
          Observer(builder: (_) {
            return _imageUploadViewModel.isLoading
                ? const CircularProgressIndicator()
                : const SizedBox();
          })
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Observer(builder: (_) {
                  return _imageUploadViewModel.file != null
                      ? Image.file(_imageUploadViewModel.file!)
                      : const SizedBox();
                }),
              ),
              Expanded(
                  child: Card(
                elevation: 10,
                child: FittedBox(
                  child: IconButton(
                      onPressed: () async {
                        _imageUploadViewModel.saveLocalFile(
                            await _imageUploadManager
                                .fetchFromLibrary());
                      },
                      icon: const Icon(Icons.upload_outlined)),
                ),
              )),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
