import 'package:chat_app/ui/themes/style.dart' as style;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// This is our  main focus
// Let's apply light and dark theme on our app
// Now let's add dark theme on our app

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: style.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: style.contentColorLightTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme).apply(
      bodyColor: style.contentColorLightTheme,
    ),
    colorScheme: ColorScheme.light(
      primary: style.primaryColor,
      secondary: style.secondaryColor,
      error: style.errorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: style.contentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: style.contentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: style.primaryColor),
      showUnselectedLabels: true,
    ),
  );
}

ThemeData darkTheme(BuildContext context) {
  // Bydefault flutter provie us light and dark theme
  // we just modify it as our need
  return ThemeData.dark().copyWith(
    primaryColor: style.primaryColor,
    scaffoldBackgroundColor: style.contentColorLightTheme,
    appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: style.contentColorDarkTheme),
    textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme).apply(
      bodyColor: style.contentColorDarkTheme,
    ),
    colorScheme: ColorScheme.dark().copyWith(
      primary: style.primaryColor,
      secondary: style.secondaryColor,
      error: style.errorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: style.contentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: style.contentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: IconThemeData(color: style.primaryColor),
      showUnselectedLabels: true,
    ),
  );
}

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
