import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  final double? size;

  final _defoultSize = 40.0;

  const LoadingBar({Key? key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitPianoWave(
      color: Colors.amber,
      size: size ?? _defoultSize,
    );
  }
}
