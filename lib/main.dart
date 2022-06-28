import 'package:cw_mobile_app/constants/color.dart';
import 'package:cw_mobile_app/constants/route.dart';
import 'package:cw_mobile_app/views/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PersistentTabView(
        context,
        controller: navbarController,
        screens: routeScreens(),
        items: navBarItems(),
        navBarStyle: NavBarStyle.style12,
      ),
    );
  }
}
