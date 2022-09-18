import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/image_learn_202.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({Key? key}) : super(key: key);

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> with BaseSheetComp {
  Color _backgroundcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundcolor,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = showCustomSheet(context, ImageLearn202());

          if (result is bool) {
            setState(() {
              _backgroundcolor = Colors.amber;
            });
          }
        },
        child: Icon(Icons.share),
      ),
    );
  }
}

class _showBottomSheet extends StatelessWidget {
  _showBottomSheet({Key? key, required this.child}) : super(key: key);
  final Widget child;
  Color _bacground = Colors.white;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          _baseSheetHeader(),
          Expanded(child: child),
          // const Text('yazi'),
          // SizedBox(
          //   height: 50,
          // ),
          // ElevatedButton(
          //     onPressed: () {
          //       Navigator.of(context).pop<bool>(true);
          //     },
          //     child: Text('OK'))
        ],
      ),
    );
  }
}

class _baseSheetHeader extends StatelessWidget {
  const _baseSheetHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Divider(
            color: Colors.black,
            thickness: 3,
            indent: MediaQuery.of(context).size.width * 0.45,
            endIndent: MediaQuery.of(context).size.width * 0.45,
          ),
          Positioned(
            right: 10,
            top: 5,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.close),
            ),
          )
        ],
      ),
    );
  }
}

mixin BaseSheetComp {
  Future<T?> showCustomSheet<T>(
      BuildContext context, Widget child) async {
    return showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius:
                BorderRadius.vertical(top: Radius.circular(20))),
        builder: (context) {
          return _showBottomSheet(child: child);
        });
  }
}
