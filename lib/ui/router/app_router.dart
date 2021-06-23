import 'package:chat_app/ui/pages/chat_page.dart';
import 'package:chat_app/ui/pages/message_page.dart';
import 'package:chat_app/ui/pages/signin_or_signup_page.dart';
import 'package:chat_app/ui/pages/splash_page.dart';
import 'package:chat_app/ui/pages/welcome_page.dart';
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
      case '/chat-page':
        return MaterialPageRoute(builder: (context) => ChatPage());
      case '/message-page':
        return MaterialPageRoute(builder: (context) => MessagePage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
