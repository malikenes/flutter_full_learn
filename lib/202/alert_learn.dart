import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({Key? key}) : super(key: key);

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // showAboutDialog(
          //     context: context,
          //     applicationName: 'EMK',
          //     children: [Text('data')]);

          showDialog(
              context: context,
              builder: (context) {
                return _ImageZoomDialog();
              });
        },
      ),
    );
  }
}

class _UpdateDialog extends AlertDialog {
  _UpdateDialog({Key? key, required BuildContext context})
      : super(
          key: key,
          title: const Text('Version Update'),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: const Text('Update')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Close'))
          ],
        );
}

class _ImageZoomDialog extends StatelessWidget {
  const _ImageZoomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: InteractiveViewer(
        child: Image.network(
          'https://picsum.photos/200',
          fit: BoxFit.fill,
          height: 400,
        ),
      ),
    );
  }
}
