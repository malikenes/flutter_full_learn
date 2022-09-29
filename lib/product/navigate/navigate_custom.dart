import 'package:flutter/material.dart';
import 'package:flutter_full_learn/303/callback_learn.dart';
import 'package:flutter_full_learn/303/navigator/navigate_home.dart';
import 'package:flutter_full_learn/303/navigator/navigate_home_detail.dart';
import 'package:flutter_full_learn/product/navigate/navigate_router.dart';

class NavigatorCustom {
  Route<dynamic>? onGenerate(RouteSettings routeSettings) {
    final NavigateRoutes _routes = routeSettings.name == "/"
        ? NavigateRoutes.init
        : NavigateRoutes.values
            .byName(routeSettings.name!.substring(1));

    switch (_routes) {
      case NavigateRoutes.init:
        return _navigateToNormal(const CallbackLearn());

      case NavigateRoutes.home:
        return _navigateToNormal(const NavigateHome());

      case NavigateRoutes.detail:
        final _id = routeSettings.arguments;
        return _navigateToNormal(
            NavigateHomeDetail(id: _id is String ? _id : null),
            isFullScreenDialog: true);
    }
  }

  Route<dynamic>? _navigateToNormal(Widget child,
      {bool? isFullScreenDialog}) {
    return MaterialPageRoute(
        fullscreenDialog: isFullScreenDialog ?? false,
        builder: (context) {
          return child;
        });
  }
}
