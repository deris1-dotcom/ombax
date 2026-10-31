import 'package:flutter/material.dart';
import 'screens/ombax_hub.dart';

void main() {
  runApp(const OmbaxApp());
}

class OmbaxApp extends StatelessWidget {
  const OmbaxApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const OmbaxHub(), // FIX BOS - LANGSUNG KE HUB 6 KARTU BOS, BUKAN KE TABEL 1!
    );
  }
}
