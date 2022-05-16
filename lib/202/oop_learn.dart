import 'dart:io';

import 'package:flutter_full_learn/202/custom_exeption.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

abstract class IFileDownload {
  bool? downloadItems(FileItem? fileItem);

  void toShare(Uri path) async {
    await launchUrl(path);
  }
}

class FileDownload implements IFileDownload {
  @override
  bool? downloadItems(FileItem? fileItem) {
    if (fileItem == null) {
      throw FileDownloadException();
    }
    print("object");
    return true;
  }

  @override
  void toShare(Uri path) {
    // TODO: implement toShare
  }
}

//extend edersek kendimizde özellik katabiliriz ımplement de sadece kendi sınıfındaki özellikleri kullanabiliriz.
class SmsDownload extends IFileDownload with ShareMixin {
  @override
  bool? downloadItems(FileItem? fileItem) {
    if (fileItem == null) {
      throw FileDownloadException();
    }
    print("object");
    return true;
  }

  @override
  void toShare(Uri path) async {
    await launchUrl(path);
  }

  void smsShare() {}
}

class FileItem {
  final String name;
  final File file;

  FileItem(this.name, this.file);
}

mixin ShareMixin on IFileDownload {
  void toShowFile() {}
}
