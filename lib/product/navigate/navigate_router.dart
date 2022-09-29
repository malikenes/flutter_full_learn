import '../../303/callback_learn.dart';
import '../../303/navigator/navigate_home.dart';
import '../../303/navigator/navigate_home_detail.dart';

class NavigateRouters {
  final items = {
    "/": (context) => const CallbackLearn(),
    NavigateRoutes.home.withParaf: ((context) =>
        const NavigateHome()),
    NavigateRoutes.detail.withParaf: ((context) =>
        const NavigateHomeDetail()),
  };
}

enum NavigateRoutes { init, home, detail }

extension NavigateRoutesExtension on NavigateRoutes {
  String get withParaf => "/$name";
}
