import 'package:cw_mobile_app/views/favorite.dart';
import 'package:cw_mobile_app/views/home.dart';
import 'package:cw_mobile_app/views/profile.dart';
import 'package:cw_mobile_app/views/search.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

List<Widget> routeScreens() {
  return [
    HomeView(),
    SearchView(),
    FavoriteView(),
    ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> navBarItems() {
  return [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      activeColorPrimary: Colors.amber.shade700,
      inactiveColorPrimary: Colors.black54,
      title: ("ホーム"),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.search),
      activeColorPrimary: Colors.amber.shade700,
      inactiveColorPrimary: Colors.black54,
      title: ("探す"),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.favorite),
      activeColorPrimary: Colors.amber.shade700,
      inactiveColorPrimary: Colors.black54,
      title: ("お気に入り"),
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.manage_accounts),
      activeColorPrimary: Colors.amber.shade700,
      inactiveColorPrimary: Colors.black54,
      title: ("プロフィール"),
    ),
  ];
}

PersistentTabController navbarController =
    PersistentTabController(initialIndex: 0);
