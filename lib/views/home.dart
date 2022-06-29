import 'package:cw_mobile_app/constants/styles.dart';
import 'package:cw_mobile_app/views/menuDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeView extends HookWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SpacerStyles.large,
            ),
            Text(
              "今日のおすすめレシピ",
              style: TextStyles.heading,
            ),
          ],
        ),
      ),
    ));
  }
}
