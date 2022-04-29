import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _title = "Create your firs note";
    final _description = "Add a new note bla blabla";
    final _createNote = "Create a note";
    final _importNote = "İmport a note";
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(children: [
          PngImage(name: "book"),
          _TitleWidget(title: _title),
          Padding(
            padding: PaddingItems.verticalPadding,
            child: _SubTitleWidget(
              title: _description * 5,
            ),
          ),
          Spacer(),
          ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                  height: ButtonHeight.buttonHeight,
                  child: Center(
                      child: Text(
                    _createNote,
                    style: Theme.of(context).textTheme.headline6,
                  )))),
          TextButton(onPressed: () {}, child: Text(_importNote)),
          SizedBox(
            height: 50,
          )
        ]),
      ),
    );
  }
}

class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.title})
      : super(key: key);
  final TextAlign textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w200),
      textAlign: textAlign,
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}

class PaddingItems {
  static final EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
  static final EdgeInsets verticalPadding =
      const EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeight {
  static const buttonHeight = 50.0;
}
