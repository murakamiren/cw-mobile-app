import 'package:cw_mobile_app/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SingUpView extends StatelessWidget {
  const SingUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("アカウント作成"),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: SpacerStyles.semiLarge,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: SpacerStyles.xl,
              ),
              const Text(
                "アカウント作成",
                style: TextStyles.heading,
              ),
              const SizedBox(
                height: SpacerStyles.xl,
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
                height: SpacerStyles.large,
              ),
              const TextField(
                decoration: InputDecoration(hintText: "名前"),
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
