import 'package:cw_mobile_app/constants/color.dart';
import 'package:cw_mobile_app/views/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: CustomColor.primaryColor,
        // primaryColor: Colors.white,
      ),
      home: HomeView(),
    );
  }
}
