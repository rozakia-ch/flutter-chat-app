import 'package:chat_app/ui/router/app_router.dart';
import 'package:chat_app/ui/themes/theme.dart' as themes;
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(EasyDynamicThemeWidget(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat App',
      debugShowCheckedModeBanner: false,
      theme: themes.lightTheme(context),
      darkTheme: themes.darkTheme(context),
      themeMode: EasyDynamicTheme.of(context).themeMode,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: '/',
    );
  }
}
