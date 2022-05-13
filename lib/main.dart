import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/appbar_learn.dart';
import 'package:flutter_full_learn/101/card_learn.dart';
import 'package:flutter_full_learn/101/color_learn.dart';
import 'package:flutter_full_learn/101/column_row_learn.dart';
import 'package:flutter_full_learn/101/custom_widget_learn.dart';
import 'package:flutter_full_learn/101/icon_learn.dart';
import 'package:flutter_full_learn/101/image_learn.dart';
import 'package:flutter_full_learn/101/indicator_learn.dart';
import 'package:flutter_full_learn/101/list_tile_learn.dart';
import 'package:flutter_full_learn/101/list_view_learn.dart';
import 'package:flutter_full_learn/101/listview_builder_learn.dart';
import 'package:flutter_full_learn/101/navigation_learn.dart';
import 'package:flutter_full_learn/101/padding_learn.dart';
import 'package:flutter_full_learn/101/pageview_learn.dart';
import 'package:flutter_full_learn/101/scaffold_learn.dart';
import 'package:flutter_full_learn/101/stack_learn.dart';
import 'package:flutter_full_learn/101/stateful_learn.dart';
import 'package:flutter_full_learn/101/stateful_lifecycle_learn.dart';
import 'package:flutter_full_learn/101/stateless_learn.dart';
import 'package:flutter_full_learn/101/text_learn.dart';
import 'package:flutter_full_learn/101/textfield_learn.dart';
import 'package:flutter_full_learn/202/tab_learn.dart';
import 'package:flutter_full_learn/demos/colors_demos_lifecycle.dart';
import 'package:flutter_full_learn/demos/colors_demos_view.dart';
import 'package:flutter_full_learn/demos/my_collection_demos.dart';
import 'package:flutter_full_learn/demos/note_demos_app.dart';
import 'package:flutter_full_learn/demos/stack_learn_demos.dart';

import '101/button_learn.dart';
import '101/container_sized_box_learn.dart';

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
        theme: ThemeData.dark().copyWith(
            tabBarTheme: TabBarTheme(
              unselectedLabelColor: Colors.grey,
              indicatorSize: TabBarIndicatorSize.label,
            ),
            progressIndicatorTheme: ProgressIndicatorThemeData(
              color: Colors.white,
            ),
            listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
            cardTheme:
                CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
            inputDecorationTheme: InputDecorationTheme(
              filled: true,
              fillColor: Colors.transparent,
              border: OutlineInputBorder(),
              labelStyle: TextStyle(fontSize: 24),
            ),
            appBarTheme: AppBarTheme(
                centerTitle: true,

                // systemOverlayStyle: SystemUiOverlayStyle.light,
                backgroundColor: Colors.transparent,
                elevation: 0)),
        home: TabLearn());
  }
}
