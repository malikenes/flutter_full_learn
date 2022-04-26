import 'package:flutter/material.dart';

class ImageLeranView extends StatelessWidget {
  const ImageLeranView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: 250,
              width: 250,
              child: PngImage(name: ImageItems().bookItem)),
          Image.network(
            "https://e7.pngegg.com/pngimages/856/250/png-clipart-open-book-art-open-white-book-objects-book.png",
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.error_outline_outlined),
          )
        ],
      ),
    );
  }
}

class ImageItems {
  final String bookItem = "book";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/$name.png",
      fit: BoxFit.cover,
    );
  }
}
