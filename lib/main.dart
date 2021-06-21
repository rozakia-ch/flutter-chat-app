import 'package:chat_app/ui/pages/welcome_page.dart';
import 'package:chat_app/ui/router/app_router.dart';
import 'package:chat_app/ui/themes/theme.dart' as themes;
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat App',
      debugShowCheckedModeBanner: false,
      theme: themes.lightTheme(context),
      darkTheme: themes.darkTheme(context),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: '/',
    );
  }
}
