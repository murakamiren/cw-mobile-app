import 'package:cw_mobile_app/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: SpacerStyles.semiLarge,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: SpacerStyles.xxl,
              ),
              const Text(
                "ようこそ",
                style: TextStyles.heading,
              ),
              const SizedBox(
                height: SpacerStyles.xl * 2,
              ),
              const TextField(
                decoration: InputDecoration(hintText: "email"),
              ),
              const SizedBox(
                height: SpacerStyles.large,
              ),
              const TextField(
                decoration: InputDecoration(hintText: "password"),
              ),
              const SizedBox(
                height: SpacerStyles.xxl,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber.shade600,
                ),
                child: const Text(
                  "ログインする",
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: SpacerStyles.sm,
                ),
                child: const Text(
                  "もしくは",
                  style: TextStyles.smParagraph,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber.shade600,
                ),
                child: const Text(
                  "アカウントを作成する",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
