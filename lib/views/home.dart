import 'package:cw_mobile_app/views/menuDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeView extends HookWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ホーム"),
        elevation: 0,
      ),
      body: Center(
        child: TextButton(
          child: Text(
            "test",
            style: TextStyle(color: Colors.amber.shade700),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => MenuDetail(),
              ),
            );
          },
        ),
      ),
    );
  }
}
