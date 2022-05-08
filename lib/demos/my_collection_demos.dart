import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _collectionCard(model: _items[index]);
        },
      ),
    );
  }
}

class _collectionCard extends StatelessWidget {
  const _collectionCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingUtilty().paddingHorizontal,
      child: Card(
        elevation: 10,
        margin: PaddingUtilty().paddingBottom,
        child: SizedBox(
          height: 250,
          child: Column(
            children: [
              Image.network(_model.imagePath),
              Padding(
                padding: PaddingUtilty().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text(_model.imageTitle), Text("${_model.price} eth")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String imageTitle;
  final double price;

  CollectionModel({required this.imagePath, required this.imageTitle, required this.price});
}

class CollectionItems {
  late final List<CollectionModel> items;
  CollectionItems() {
    items = [
      CollectionModel(
          imagePath: "https://picsum.photos/200", imageTitle: "Abstrack Art", price: 3.4),
      CollectionModel(
          imagePath: "https://picsum.photos/200", imageTitle: "Abstrack Art2", price: 3.4),
      CollectionModel(
          imagePath: "https://picsum.photos/200", imageTitle: "Abstrack Art3", price: 3.4),
      CollectionModel(
          imagePath: "https://picsum.photos/200", imageTitle: "Abstrack Art4", price: 3.4)
    ];
  }
}

class PaddingUtilty {
  final paddingTop = EdgeInsets.only(top: 20.0);
  final paddingBottom = EdgeInsets.only(bottom: 20.0);
  final paddingHorizontal = EdgeInsets.symmetric(horizontal: 20.0);
}
