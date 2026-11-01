import 'package:flutter/material.dart';
import 'ombax_hub.dart';
import 'free_premium_screen.dart';
import 'account_screen.dart';

class MainNavigation extends StatefulWidget {
  final int initialIndex;
  const MainNavigation({super.key, this.initialIndex = 0});
  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  late int _currentIndex;
  @override
  void initState() { super.initState(); _currentIndex = widget.initialIndex; }
  final _screens = const [OmbaxHub(), FreePremiumScreen(), AccountScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E1A),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF0A0E1A),
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white54,
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Hub'),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: 'Free'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
