import 'package:flutter/material.dart';

class PaddingLeranView extends StatelessWidget {
  const PaddingLeranView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: ProjectPadding.pagePadding,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  height: 100,
                ),
              ),
              Container(
                color: Colors.white,
                height: 100,
              ),
            ],
          ),
        ));
  }
}

class ProjectPadding {
  static const pagePadding = EdgeInsets.all(10.0);
}
