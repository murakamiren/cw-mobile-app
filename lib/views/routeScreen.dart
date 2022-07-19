import 'package:cw_mobile_app/constants/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RouteScreen extends HookWidget {
  const RouteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    void onItemTapped(int index) {
      selectedIndex.value = index;
    }

    return Scaffold(
      body: routes[selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex.value,
        onTap: onItemTapped,
        items: navBarItems,
      ),
    );
  }
}
