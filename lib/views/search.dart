import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchView extends HookWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("探す"),
        elevation: 2,
      ),
      body: Center(
        child: Text("お気に入り"),
      ),
    );
  }
}
