import 'package:chat_app/ui/widgets/media_query_container.dart';
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
                  MediaQuery.of(context).platformBrightness == Brightness.light
                      ? "assets/images/Logo_light.png"
                      : "assets/images/Logo_dark.png",
                  height: 146.0,
                ),
                Spacer(),
                TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    minimumSize: Size(double.infinity, 40.0),
                    padding: EdgeInsets.all(style.defaultPadding * 0.75),
                  ),
                  onPressed: () => Navigator.pushNamed(context, "/chat-page"),
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: style.defaultPadding * 1.5),
                TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    minimumSize: Size(double.infinity, 40.0),
                    padding: EdgeInsets.all(style.defaultPadding * 0.75),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  ),
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
