import 'package:flutter/material.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({Key? key}) : super(key: key);

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView>
    with TickerProviderStateMixin {
  bool _isVisible = false;
  bool _isOpacity = false;
  late AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this, duration: _DurationConst().durationLow);
  }

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeVisible();
          controller.animateTo(_isVisible ? 1 : 0);
        },
      ),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
                duration: _DurationConst().durationLow,
                opacity: _isOpacity ? 1 : 0,
                child: Text("data")),
            trailing: IconButton(
                onPressed: () {
                  _changeOpacity();
                },
                icon: Icon(Icons.place_outlined)),
          ),
          AnimatedDefaultTextStyle(
              child: Text("asddsa"),
              style: (_isVisible
                      ? context.textTheme().headline1
                      : context.textTheme().subtitle1) ??
                  const TextStyle(),
              duration: _DurationConst().durationLow),
          AnimatedIcon(
              icon: AnimatedIcons.menu_close, progress: controller),
          AnimatedContainer(
            duration: _DurationConst().durationLow,
            height: _isVisible
                ? 0
                : (MediaQuery.of(context).size.height) * 0.2,
            width: (MediaQuery.of(context).size.width) * 0.2,
            color: Colors.amber,
            margin: EdgeInsets.all(10),
          ),
          Expanded(
              child: Stack(
            children: [
              AnimatedPositioned(
                  top: _isOpacity ? 0 : 40,
                  curve: Curves.elasticOut,
                  child: Text("data"),
                  duration: _DurationConst().durationLow)
            ],
          )),
          Expanded(
            child: AnimatedList(itemBuilder: (context, index, animation) {
              return Text("data");
            }),
          ),
          _placeHolder(),
        ],
      ),
    );
  }

  AnimatedCrossFade _placeHolder() {
    return AnimatedCrossFade(
        firstChild: Placeholder(),
        secondChild: SizedBox.shrink(),
        crossFadeState: _isVisible
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: _DurationConst().durationLow);
  }
}

extension BuildContextextension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationConst {
  final durationLow = Duration(seconds: 1);
}
