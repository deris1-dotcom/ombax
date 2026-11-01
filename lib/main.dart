import 'package:flutter/material.dart';
import 'screens/main_navigation.dart';

void main() { runApp(const OmbaxApp()); }

class OmbaxApp extends StatelessWidget {
  const OmbaxApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OMBAX PRO',
      theme: ThemeData.dark(),
      home: const MainNavigation(),
    );
  }
}
