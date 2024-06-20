import 'package:flutter/material.dart';

class SocialArtTheme {
  static ThemeData getTheme() {
    return ThemeData(
        colorScheme: const ColorScheme(
          onSurface: Color(0x001A1B22),
          surface: Color.fromRGBO(35, 37, 47, 1),
          onError: Color(0x001A1B22),
          onPrimary: Color.fromRGBO(26, 27, 34, 1),
          onSecondary: Colors.white,
          brightness: Brightness.dark,
          primary: Color(0xFFFFFFFF),
          secondary: Color.fromRGBO(26, 27, 34, 1),
          error: Color(0x001A1B22),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(18, 18, 22, 1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(0, 18, 22, 1),
        ),
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: Color.fromRGBO(18, 22, 1, 0.071),
        ),
        textTheme: const TextTheme(
          bodySmall: TextStyle(color: Color(0xffffffff)),
          bodyMedium: TextStyle(color: Color(0xffffffff)),
          bodyLarge: TextStyle(color: Color(0xffffffff)),
        ));
  }
}
