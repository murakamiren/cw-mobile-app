import 'package:cw_mobile_app/components/recipeCard.dart';
import 'package:cw_mobile_app/constants/styles.dart';
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
            SizedBox(
              height: SpacerStyles.base,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RecipeCard(),
                  SizedBox(
                    width: SpacerStyles.base,
                  ),
                  RecipeCard(),
                  SizedBox(
                    width: SpacerStyles.base,
                  ),
                  RecipeCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
