import 'dart:async';

import 'package:chat_app/ui/widgets/media_query_container.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? getStarted = prefs.getBool("get_started") != null ? prefs.getBool("get_started") : false;
    String route = getStarted! ? "/signin-or-signup-page" : "/welcome-page";
    return Timer(duration, () => Navigator.pushNamed(context, route));
  }

  @override
  Widget build(BuildContext context) {
    return MediaQueryContainer(
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Image.asset(
              Theme.of(context).brightness == Brightness.light
                  ? "assets/images/Logo_light.png"
                  : "assets/images/Logo_dark.png",
              height: 146.0,
            ),
          ),
        ),
      ),
    );
  }
}
