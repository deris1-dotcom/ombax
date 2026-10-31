import 'package:flutter/material.dart';
import 'ombax_hub.dart';

class MainNavigation extends StatefulWidget {
  final int initialIndex;
  const MainNavigation({super.key, this.initialIndex = 0});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  late int _currentIndex;
  double price = 42150.75;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  // Placeholder biar gak error No such file
  Widget _freeScreen() {
    return const Center(child: Text('FREE PREMIUM - OMBAX PRO', style: TextStyle(color: Colors.white, fontSize: 20)));
  }

  Widget _accountScreen() {
    return const Center(child: Text('ACCOUNT - OMBAX', style: TextStyle(color: Colors.white, fontSize: 20)));
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      const OmbaxHub(),
      _freeScreen(),
      _accountScreen(),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF0A0E1A),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E1A),
        elevation: 0,
        toolbarHeight: 110,
        title: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('OMBAX PRO LIVE', style: TextStyle(color: Colors.white54, fontSize: 10)),
                  Text('\$${price.toStringAsFixed(2)}', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
                  const Text('+1.84% Real-time • No Paywall', style: TextStyle(color: Colors.green, fontSize: 11)),
                ],
              ),
              Container(
                width: 60, height: 40,
                decoration: BoxDecoration(color: Colors.green.withOpacity(0.15), borderRadius: BorderRadius.circular(8)),
                child: const Icon(Icons.show_chart, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
      body: screens[_currentIndex],
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
