import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF0A0E1A),
      body: Center(child: Text('ACCOUNT', style: TextStyle(color: Colors.white, fontSize: 20))),
    );
  }
}
