import 'package:image_picker/image_picker.dart';

class ImageUploadManager {
  final ImagePicker _picker = ImagePicker();
  Future<XFile?> fetchFromLibrary() async {
    // Pick an image
    final XFile? image =
        await _picker.pickImage(source: ImageSource.gallery);
    // Capture a photo
    return image;
  }

  Future<XFile?> fetchFromCamera() async {
    // Pick an image
    final XFile? image =
        await _picker.pickImage(source: ImageSource.camera);
    // Capture a photo
    return image;
  }
}
