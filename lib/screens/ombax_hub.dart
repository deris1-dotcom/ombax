import 'package:flutter/material.dart';
import 'main_navigation.dart';

class OmbaxHub extends StatelessWidget {
  const OmbaxHub({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/ocean_bg.jpg'),
            fit: BoxFit.cover,
          ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0A1931), Color(0xFF001524)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 20),
              // LOGO OMBAX
              Column(
                children: [
                  Container(
                    width: 70, height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xFF4FC3F7), width: 2),
                    ),
                    child: const Icon(Icons.waves, size: 40, color: Color(0xFF4FC3F7)),
                  ),
                  const SizedBox(height: 10),
                  const Text('OMBAX', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, letterSpacing: 4, color: Colors.white)),
                ],
              ),
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
                      _hubCard(context, 0, 'Ombax', 'FREE', 'Ombax • Real-time • No Paywall', Color(0xFF0D2A3A), Icons.nightlight_round),
                      _hubCard(context, 1, 'VIP Gold', 'VIP GOLD', 'Gold • Priority • Exclusive', Color(0xFF2A2111), Icons.emoji_events, isLocked: true),
                      _hubCard(context, 2, 'OMBAX PRO', '\$124,000', '+1.84% ↗', Color(0xFF0A1A1A), Icons.shield, isPro: true),
                      _hubCard(context, 3, 'Voice Harbor', 'Real-time Communication', 'Active 12 Channels', Color(0xFFD6E8E0), Icons.hearing, isLight: true),
                      _hubCard(context, 4, 'AI LIBRA', 'AI Analytics Assistant', 'Insights • Forecasting • 24/7', Color(0xFF0A1931), Icons.all_inclusive, isLibra: true),
                      _hubCard(context, 5, 'Private Assistant', 'Wave Assistant • Online Ready', 'Wave Assistant • Online', Colors.white, Icons.bubble_chart, isPrivate: true),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white12),
                ),
                child: const Center(child: Text('100% FREE • SECURE • PREMIUM • REAL-TIME', style: TextStyle(fontSize: 10, letterSpacing: 2, color: Colors.white54))),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _hubCard(BuildContext context, int index, String title, String subtitle, String desc, Color bg, IconData icon, {bool isLocked=false, bool isPro=false, bool isLight=false, bool isLibra=false, bool isPrivate=false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) => MainNavigation(initialIndex: index)));
      },
      child: Container(
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: isLight ? Colors.white : Colors.white.withOpacity(0.1)),
          image: isLight ? null : const DecorationImage(image: AssetImage('assets/card_texture.png'), fit: BoxFit.cover, opacity: 0.3),
        ),
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              if (isPro) const Icon(Icons.verified_user, color: Color(0xFF4CAF50))
              else if (isLibra) const Icon(Icons.all_inclusive, color: Color(0xFFD4AF37))
              else Icon(icon, color: isLight ? Color(0xFF0A1931) : Colors.white70),
              if (isLocked) const Icon(Icons.lock, color: Color(0xFFD4AF37), size: 20)
              else if (title=='Ombax') Container(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2), decoration: BoxDecoration(color: Color(0xFF2E7D32), borderRadius: BorderRadius.circular(20)), child: const Text('FREE', style: TextStyle(fontSize: 10, color: Colors.white))),
            ]),
            const Spacer(),
            Text(title, style: TextStyle(fontSize: isPro?16:22, fontWeight: FontWeight.bold, color: isLight?Color(0xFF0A1931): isPro?Colors.white: isLibra?Color(0xFF4FC3F7):Colors.white)),
            const SizedBox(height: 4),
            Text(subtitle, style: TextStyle(fontSize: isPro?22:12, fontWeight: isPro?FontWeight.bold:FontWeight.w500, color: isPro?Color(0xFF4CAF50): isLight?Colors.black54: Colors.white70)),
            const SizedBox(height: 2),
            Text(desc, style: TextStyle(fontSize: 9, color: isLight?Colors.black45: Colors.white38)),
          ],
        ),
      ),
    );
  }
}
