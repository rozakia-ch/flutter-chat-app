import 'package:chat_app/ui/widgets/media_query_container.dart';
import 'package:chat_app/ui/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;

class SignInOrSignUpPage extends StatelessWidget {
  const SignInOrSignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQueryContainer(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: style.defaultPadding),
            child: Column(
              children: [
                Spacer(flex: 2),
                Image.asset(
                  Theme.of(context).brightness == Brightness.light
                      ? "assets/images/Logo_light.png"
                      : "assets/images/Logo_dark.png",
                  height: 146.0,
                ),
                Spacer(),
                PrimaryButton(
                  text: "Sign In",
                  press: () => Navigator.pushNamedAndRemoveUntil(context, "/main-page", (route) => false),
                ),
                SizedBox(height: style.defaultPadding * 1.5),
                PrimaryButton(
                  color: Theme.of(context).colorScheme.secondary,
                  text: "Sign Up",
                  press: () {},
                ),
                Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
