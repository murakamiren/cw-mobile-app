import 'package:cw_mobile_app/constants/styles.dart';
import 'package:cw_mobile_app/views/signUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: SpacerStyles.semiLarge,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: SpacerStyles.xxl,
              ),
              const Text(
                "ロゴ",
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
                height: SpacerStyles.xxl * 2,
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
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
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SingUpView(),
                          ),
                        );
                      },
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
            ],
          ),
        ),
      ),
    );
  }
}
