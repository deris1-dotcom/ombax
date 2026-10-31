import 'package:flutter/material.dart';

class MainNavigation extends StatefulWidget {
  final int initialIndex;
  const MainNavigation({super.key, this.initialIndex = 0});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  final List<Widget> _screens = [
    const _TabScreen(title: 'AI.OMBAX FREE - Starter Complete', subtitle: 'Dashboard Overview Tabel 1', color: Color(0xFF0A1931)),
    const _TabScreen(title: 'AI.OMBAX VIP GOLD PRIVATE', subtitle: 'Dashboard Overview Tabel 2', color: Color(0xFF1A1500)),
    const _TabScreen(title: 'AI.OMBAX PRO \$124K', subtitle: 'Dashboard Overview Tabel 3', color: Color(0xFF0A1A1A)),
    const _TabScreen(title: 'Voice Harbor', subtitle: 'Real-time Communication', color: Color(0xFF0A2A1A)),
    const _TabScreen(title: 'AI.OMBAX LIBRA - Balance Engine', subtitle: 'AI Libra • Tabel 5 • 96.8%', color: Color(0xFF1A0A2A)),
    const _TabScreen(title: 'Private Assistant', subtitle: 'Wave Assistant • Online', color: Color(0xFF0A1931)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF0A1F1A),
        selectedItemColor: const Color(0xFF4DB6AC),
        unselectedItemColor: Colors.white54,
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.coffee), label: 'FREE'),
          BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: 'VIP GOLD'),
          BottomNavigationBarItem(icon: Icon(Icons.diamond), label: 'PRO \$124K'),
          BottomNavigationBarItem(icon: Icon(Icons.mic), label: 'VOICE'),
          BottomNavigationBarItem(icon: Icon(Icons.balance), label: 'LIBRA'),
          BottomNavigationBarItem(icon: Icon(Icons.support_agent), label: 'PRIVATE'),
        ],
      ),
    );
  }
}

class _TabScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  const _TabScreen({required this.title, required this.subtitle, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(width: 70, height: 70, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white24, width: 2))),
                  const SizedBox(width: 16),
                  Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFD4AF37))),
                    const SizedBox(height: 4),
                    Text(subtitle, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),
                  ])),
                ],
              ),
            ),
            Expanded(child: Center(child: Text('$subtitle\nActive', textAlign: TextAlign.center, style: const TextStyle(color: Colors.white54)))),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(children: [const Icon(Icons.lightbulb, color: Color(0xFFD4AF37), size: 18), const SizedBox(width: 8), const Text('AI SUMMARY', style: TextStyle(color: Color(0xFFD4AF37), fontWeight: FontWeight.bold, fontSize: 12))]),
            ),
          ],
        ),
      ),
    );
  }
}
