import 'package:cw_mobile_app/constants/color.dart';
import 'package:cw_mobile_app/constants/route.dart';
import 'package:cw_mobile_app/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
      home: MainApp(),
    );
  }
}

class MainApp extends HookWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectIndex = useState(0);
    return Scaffold(
      body: Routes[selectIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.amber.shade600,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "ホーム",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "プロフィール",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "お気に入り",
          ),
        ],
        currentIndex: selectIndex.value,
        onTap: (index) {
          selectIndex.value = index;
        },
      ),
    );
  }
}
