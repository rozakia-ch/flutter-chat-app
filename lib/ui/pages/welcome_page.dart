import 'package:chat_app/ui/widgets/media_query_container.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQueryContainer(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Spacer(flex: 2),
              Image.asset("assets/images/welcome_image.png"),
              Spacer(flex: 3),
              Text(
                "Welcome to our freedom \nmessaging app",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Text(
                "Freedom talk any person of your \nmother language.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.64)),
              ),
              Spacer(flex: 3),
              FittedBox(
                child: TextButton(
                  onPressed: () => Navigator.pushNamed(context, "/signin-or-signup-page"),
                  child: Row(
                    children: [
                      Text(
                        "Skip",
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.8),
                            ),
                      ),
                      SizedBox(width: style.defaultPadding / 4),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.8),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
