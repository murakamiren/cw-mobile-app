import 'package:cw_mobile_app/constants/color.dart';
import 'package:cw_mobile_app/constants/route.dart';
import 'package:cw_mobile_app/views/home.dart';
import 'package:cw_mobile_app/views/routeScreen.dart';
import 'package:cw_mobile_app/views/signIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends HookWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isAuth = useState(true);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: CustomColor.primaryColor,
      ),
      home: isAuth.value ? const RouteScreen() : const SignInView(),
    );
  }
}
