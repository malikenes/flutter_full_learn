import 'dart:typed_data';

import 'package:dio/dio.dart';

class ImageUploadservice {
  final Dio dio;

  ImageUploadservice(this.dio);

  Future<void> uploadToImageServer(
      Uint8List byteArray, String name) async {
    var formData = FormData.fromMap({
      '': MultipartFile.fromBytes(byteArray),
    });
    await dio.post('full%2F$name.png',
        data: formData, onSendProgress: (int sent, int total) {});
  }
}
