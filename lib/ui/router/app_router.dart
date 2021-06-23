import 'package:chat_app/ui/pages/main_page.dart';
import 'package:chat_app/ui/pages/messages/message_page.dart';
import 'package:chat_app/ui/pages/setting_page.dart';
import 'package:chat_app/ui/pages/signin_or_signup_page.dart';
import 'package:chat_app/ui/pages/welcome/splash_page.dart';
import 'package:chat_app/ui/pages/welcome/welcome_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => SplashPage());
      case '/welcome-page':
        return MaterialPageRoute(builder: (context) => WelcomePage());
      case '/signin-or-signup-page':
        return MaterialPageRoute(builder: (context) => SignInOrSignUpPage());
      case '/main-page':
        return MaterialPageRoute(builder: (context) => MainPage());
      case '/message-page':
        return MaterialPageRoute(builder: (context) => MessagePage());
      case '/setting-page':
        return MaterialPageRoute(builder: (context) => SettingPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
