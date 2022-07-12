import 'package:cw_mobile_app/components/limitedRecipeCard.dart';
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: SpacerStyles.large,
              ),
              const Text(
                "今日のおすすめレシピ",
                style: TextStyles.heading,
              ),
              const SizedBox(
                height: SpacerStyles.base,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
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
              const SizedBox(
                height: SpacerStyles.xl,
              ),
              const Text(
                "期間限定",
                style: TextStyles.subHeading,
              ),
              const SizedBox(
                height: SpacerStyles.base,
              ),
              Column(
                children: const [
                  LimitedRecipeCard(),
                  SizedBox(height: SpacerStyles.base),
                  LimitedRecipeCard(),
                ],
              ),
              const SizedBox(
                height: SpacerStyles.xl,
              ),
              const Text(
                "他にもいろいろ",
                style: TextStyles.subHeading,
              ),
              const SizedBox(
                height: SpacerStyles.base,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
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
      ),
    ));
  }
}
