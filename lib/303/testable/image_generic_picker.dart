import 'package:flutter/material.dart';
import 'package:flutter_full_learn/product/util/image_upload.dart';

class ImagePickerGenericView extends StatefulWidget {
  const ImagePickerGenericView({Key? key}) : super(key: key);

  @override
  State<ImagePickerGenericView> createState() =>
      _ImagePickerGenericViewState();
}

class _ImagePickerGenericViewState
    extends State<ImagePickerGenericView> {
  final _imageUploadManager = ImageUploadManager();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        ElevatedButton(
            onPressed: () {
              _imageUploadManager.fetchFromLibrary();
            },
            child: const Text('Fetch from Gallery')),
        ElevatedButton(
            onPressed: () {
              _imageUploadManager.fetchFromCamera();
            },
            child: const Text('Fetch from Camera')),
        ElevatedButton(
            onPressed: () {}, child: const Text('Fetch from Gallery'))
      ]),
    );
  }
}
