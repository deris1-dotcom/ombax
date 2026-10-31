import 'package:flutter/material.dart';
import 'main_navigation.dart';

class OmbaxHub extends StatelessWidget {
  const OmbaxHub({super.key});

  Widget _hubCard(BuildContext context, int index, String title, String sub, String desc, Color bg, IconData icon, {bool isLocked=false, bool isPro=false}) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => MainNavigation(initialIndex: index))),
      child: Container(
        decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.white10)),
        padding: const EdgeInsets.all(14),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Icon(icon, color: isPro ? const Color(0xFF4CAF50) : Colors.white70),
            if (isLocked) const Icon(Icons.lock, color: Color(0xFFD4AF37), size: 20)
            else if (title=='Ombax') Container(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2), decoration: BoxDecoration(color: const Color(0xFF2E7D32), borderRadius: BorderRadius.circular(20)), child: const Text('FREE', style: TextStyle(fontSize: 10, color: Colors.white))),
          ]),
          const Spacer(),
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
          const SizedBox(height: 4),
          Text(sub, style: TextStyle(fontSize: isPro?20:12, fontWeight: isPro?FontWeight.bold:FontWeight.w500, color: isPro?const Color(0xFF4CAF50):Colors.white70)),
          const SizedBox(height: 2),
          Text(desc, style: const TextStyle(fontSize: 9, color: Colors.white38)),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A1931),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Column(children: [
              Icon(Icons.waves, size: 50, color: Color(0xFF4FC3F7)),
              SizedBox(height: 8),
              Text('OMBAX', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, letterSpacing: 4, color: Colors.white)),
            ]),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.95,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  children: [
                    _hubCard(context, 0, 'Ombax', 'FREE', 'Ombax • Real-time • No Paywall', const Color(0xFF0D2A3A), Icons.nightlight_round),
                    _hubCard(context, 1, 'VIP Gold', 'VIP GOLD', 'Gold • Priority • Exclusive', const Color(0xFF2A2111), Icons.emoji_events, isLocked: true),
                    _hubCard(context, 2, 'OMBAX PRO', '\$124,000', '+1.84% ↗', const Color(0xFF0A1A1A), Icons.shield, isPro: true),
                    _hubCard(context, 3, 'Voice Harbor', 'Real-time Communication', 'Active 12 Channels', const Color(0xFF1A2A2A), Icons.hearing),
                    _hubCard(context, 4, 'AI LIBRA', 'AI Analytics Assistant', 'Insights • 24/7', const Color(0xFF1A102A), Icons.balance),
                    _hubCard(context, 5, 'Private Assistant', 'Wave Assistant • Online', 'Wave Assistant • Online', const Color(0xFF102A3A), Icons.support_agent),
                  ],
                ),
              ),
            ),
            Container(margin: const EdgeInsets.all(16), padding: const EdgeInsets.symmetric(vertical: 12), decoration: BoxDecoration(color: Colors.white.withOpacity(0.05), borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.white12)), child: const Center(child: Text('100% FREE • SECURE • PREMIUM • REAL-TIME', style: TextStyle(fontSize: 10, letterSpacing: 2, color: Colors.white54)))),
          ],
        ),
      ),
    );
  }
}
