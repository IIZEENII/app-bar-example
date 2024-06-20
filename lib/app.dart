import 'package:flutter/material.dart';
import 'package:socialart/shared/presentation/app_theme.dart';
import 'package:socialart/shared/presentation/screens/home_screen.dart';

class SocialArtApp extends StatelessWidget {
  const SocialArtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: SocialArtTheme.getTheme(),
      title: 'Material App',
      home: const HomeScreen(),
    );
  }
}
