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
        type: BottomNavigationBarType.shifting,
        fixedColor: Colors.amber.shade700,
        unselectedItemColor: Colors.black54,
        iconSize: 28,
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedFontSize: 10,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "ホーム",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "探す",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "お気に入り",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts),
            label: "プロフィール",
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
