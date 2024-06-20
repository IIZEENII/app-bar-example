import 'package:flutter/material.dart';
import 'package:socialart/app.dart';
import 'package:socialart/shared/infrastructure/dependency_inyector.dart' as di;

void main() async {
  await di.init();
  runApp(const SocialArtApp());
}
