import 'package:flutter/material.dart';
import 'dart:async';

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

  @override
  Widget build(BuildContext context) {
    final screens = [
      const FreePremiumScreen(),
      const VipPremiumScreen(),
      const ProPremiumScreen(),
      const VoicePremiumScreen(),
      const LibraPremiumScreen(),
      const PrivatePremiumScreen(),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF081A2E),
      body: screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF0A1F1A),
          border: Border(top: BorderSide(color: Colors.white.withOpacity(0.08))),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: const Color(0xFF4DB6AC),
          unselectedItemColor: Colors.white38,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.coffee), label: 'FREE'),
            BottomNavigationBarItem(icon: Icon(Icons.emoji_events), label: 'VIP GOLD'),
            BottomNavigationBarItem(icon: Icon(Icons.diamond), label: 'PRO \$12...'),
            BottomNavigationBarItem(icon: Icon(Icons.mic), label: 'VOICE'),
            BottomNavigationBarItem(icon: Icon(Icons.balance), label: 'LIBRA'),
            BottomNavigationBarItem(icon: Icon(Icons.support_agent), label: 'PRIVATE'),
          ],
        ),
      ),
    );
  }
}

// HEADER PREMIUM BOS SAMA KAYAK SCREENSHOT BOS
Widget _premiumHeader(String goldTitle, String whiteTitle) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
    child: Row(
      children: [
        Container(width: 70, height: 70, decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white24, width: 1.5))),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(goldTitle, style: const TextStyle(color: Color(0xFFD4AF37), fontWeight: FontWeight.bold, fontSize: 18, height: 1.2)),
              const SizedBox(height: 6),
              Text(whiteTitle, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 26, height: 1.1)),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _aiSummary() {
  return Container(
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(color: const Color(0xFF081A2E), border: Border(top: BorderSide(color: Colors.white.withOpacity(0.05)))),
    child: const Row(children: [Icon(Icons.lightbulb, color: Color(0xFFD4AF37), size: 20), SizedBox(width: 8), Text('AI SUMMARY', style: TextStyle(color: Color(0xFFD4AF37), fontWeight: FontWeight.bold, fontSize: 13, letterSpacing: 1))]),
  );
}

// FREE PREMIUM - TABEL 1 BOS
class FreePremiumScreen extends StatefulWidget { const FreePremiumScreen({super.key}); @override State<FreePremiumScreen> createState()=> _FreePremiumScreenState();}
class _FreePremiumScreenState extends State<FreePremiumScreen> {
  double price = 124000; late Timer t;
  @override void initState(){ super.initState(); t = Timer.periodic(const Duration(seconds: 2), (_){ setState(()=> price += (DateTime.now().millisecond%10-5)*5); }); }
  @override void dispose(){ t.cancel(); super.dispose(); }
  @override Widget build(BuildContext context){
    return Column(children: [
      _premiumHeader('AI.OMBAX FREE - Starter', 'Complete\nDashboard Overview\nTabel 1'),
      Expanded(child: Container(width: double.infinity, padding: const EdgeInsets.all(20), child: Column(children: [
        Container(padding: const EdgeInsets.all(16), decoration: BoxDecoration(color: Colors.white.withOpacity(0.05), borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.white10)), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [const Text('OMBAX PRO LIVE', style: TextStyle(color: Colors.white54, fontSize: 10)), Text('\$${price.toStringAsFixed(2)}', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)), const Text('+1.84% Real-time • No Paywall', style: TextStyle(color: Colors.green, fontSize: 11))]), Container(width: 60, height: 40, decoration: BoxDecoration(color: Colors.green.withOpacity(0.15), borderRadius: BorderRadius.circular(8)), child: const Icon(Icons.show_chart, color: Colors.green)))])),
        const SizedBox(height: 20),
        const Text('Dashboard Overview Tabel 1\nActive', textAlign: TextAlign.center, style: TextStyle(color: Colors.white54, fontSize: 16)),
      ]))),
      _aiSummary(),
    ]);
  }
}

class VipPremiumScreen extends StatelessWidget { const VipPremiumScreen({super.key}); @override Widget build(BuildContext context){ return Column(children: [_premiumHeader('AI.OMBAX VIP GOLD - Private', 'Dashboard Overview\nTabel 2'), Expanded(child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Container(padding: const EdgeInsets.all(20), decoration: BoxDecoration(color: const Color(0xFFD4AF37).withOpacity(0.15), shape: BoxShape.circle), child: const Icon(Icons.emoji_events, size: 50, color: Color(0xFFD4AF37))), const SizedBox(height: 20), const Text('VIP GOLD LOCKED', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)), const SizedBox(height: 10), ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFD4AF37)), child: const Text('UNLOCK', style: TextStyle(color: Colors.black)))]))), _aiSummary()]); }}
class ProPremiumScreen extends StatelessWidget { const ProPremiumScreen({super.key}); @override Widget build(BuildContext context){ return Column(children: [_premiumHeader('AI.OMBAX PRO - \$124K', 'Dashboard Overview\nTabel 3'), Expanded(child: Center(child: Container(margin: const EdgeInsets.all(20), padding: const EdgeInsets.all(20), decoration: BoxDecoration(gradient: const LinearGradient(colors: [Color(0xFF0F2F1F), Color(0xFF0A1F15)]), borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.green.withOpacity(0.3))), child: const Column(children: [Text('\$124,000', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white)), Text('+1.84% ↗ Live Market', style: TextStyle(color: Colors.green))])))), _aiSummary()]); }}
class VoicePremiumScreen extends StatelessWidget { const VoicePremiumScreen({super.key}); @override Widget build(BuildContext context){ return Column(children: [_premiumHeader('Voice Harbor', 'Real-time\nCommunication'), Expanded(child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: 100, height: 100, decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFF4DB6AC)), child: const Icon(Icons.mic, size: 50, color: Colors.white)), const SizedBox(height: 20), const Text('12 Channels Active', style: TextStyle(color: Colors.white54))]))), _aiSummary()]); }}
class LibraPremiumScreen extends StatelessWidget { const LibraPremiumScreen({super.key}); @override Widget build(BuildContext context){ return Column(children: [_premiumHeader('AI.OMBAX LIBRA - Balance', 'Engine\nDashboard Overview\nTabel 5'), Expanded(child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [const Icon(Icons.balance, size: 60, color: Color(0xFF9C27B0)), const SizedBox(height: 20), Container(width: 200, child: const LinearProgressIndicator(value: 0.968, color: Colors.purple)), const SizedBox(height: 10), const Text('96.8% Accuracy • AI Analytics', style: TextStyle(color: Colors.white54))]))), _aiSummary()]); }}
class PrivatePremiumScreen extends StatelessWidget { const PrivatePremiumScreen({super.key}); @override Widget build(BuildContext context){ return Column(children: [_premiumHeader('Private Assistant', 'Wave Assistant • Online'), const Expanded(child: Center(child: Text('Wave Assistant • Online\nActive', textAlign: TextAlign.center, style: TextStyle(color: Colors.white54, fontSize: 18)))), _aiSummary()]); }}
