import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/package/launch_mixin.dart';
import 'package:flutter_full_learn/202/package/loading_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({Key? key}) : super(key: key);

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView>
    with TickerProviderStateMixin, LaunchMixin {
  final httpsUri = Uri(
    scheme: 'https',
    host: 'pub.dev',
    path: '/packages/url_launcher',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            launchUrl(httpsUri);
          },
        ),
        body: Column(
          children: [
            Text(
              "A",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            LoadingBar(),
          ],
        ));
  }
}
