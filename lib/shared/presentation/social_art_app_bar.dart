import 'package:flutter/material.dart';

class SocialArtAppBar extends StatelessWidget {
  const SocialArtAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('AppBar Demo'),
      scrolledUnderElevation: 56,
      shadowColor: Theme.of(context).colorScheme.shadow,
    );
  }
}
