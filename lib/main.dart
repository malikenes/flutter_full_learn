import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/tema/light_tema.dart';
import 'package:flutter_full_learn/303/callback_learn.dart';
import 'package:flutter_full_learn/product/navigate/navigate_custom.dart';
import 'package:flutter_full_learn/product/navigate/navigator_manager.dart';

import '303/package/kartal/kartal_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: LightTheme().thme,
        // theme: ThemeData.dark().copyWith(
        //     // ignore: prefer_const_constructors
        //     tabBarTheme: TabBarTheme(
        //       unselectedLabelColor: Colors.grey,
        //       indicatorSize: TabBarIndicatorSize.label,
        //     ),
        //     // ignore: prefer_const_constructors
        //     progressIndicatorTheme: ProgressIndicatorThemeData(
        //       color: Colors.white,
        //     ),
        //     listTileTheme:
        //         const ListTileThemeData(contentPadding: EdgeInsets.zero),
        //     cardTheme: CardTheme(
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(20))),
        //     // ignore: prefer_const_constructors
        //     inputDecorationTheme: InputDecorationTheme(
        //       filled: true,
        //       fillColor: Colors.transparent,
        //       border: const OutlineInputBorder(),
        //       labelStyle: const TextStyle(fontSize: 24),
        //     ),
        //     appBarTheme: const AppBarTheme(
        //         centerTitle: true,

        //         // systemOverlayStyle: SystemUiOverlayStyle.light,
        //         backgroundColor: Colors.transparent,
        //         elevation: 0)),
        //routes: NavigateRouters().items,
        onUnknownRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) {
              return const CallbackLearn();
            },
          );
        },
        onGenerateRoute: NavigatorCustom().onGenerate,
        navigatorKey: NavigatorManager.instance.navigatorGlobalKey,
        home: const KartalView());
  }
}
