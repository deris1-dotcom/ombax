import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main_navigation.dart';

class OmbaxHub extends StatelessWidget {
  const OmbaxHub({super.key});

  @override
  Widget build(BuildContext context) {
    // BUKA KUNCI ROTATE BOS!
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return Scaffold(
      backgroundColor: const Color(0xFF081A2E),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0A2342), Color(0xFF081A2E), Color(0xFF05101F)],
          ),
        ),
        child: Stack(
          children: [
            // OCEAN GLOW BOS
            Positioned(top: -100, left: -100, child: Container(width: 300, height: 300, decoration: BoxDecoration(shape: BoxShape.circle, color: const Color(0xFF0E4D92).withOpacity(0.15), boxShadow: [BoxShadow(blurRadius: 100, color: const Color(0xFF0E4D92).withOpacity(0.2))]))),
            Positioned(bottom: -80, right: -80, child: Container(width: 250, height: 250, decoration: BoxDecoration(shape: BoxShape.circle, color: const Color(0xFF00D4FF).withOpacity(0.1)))),
            
            SafeArea(
              child: OrientationBuilder(
                builder: (context, orientation) {
                  final isLandscape = orientation == Orientation.landscape;
                  return Column(
                    children: [
                      SizedBox(height: isLandscape ? 8 : 24),
                      // LOGO PREMIUM BOS
                      Column(
                        children: [
                          ShaderMask(
                            shaderCallback: (b) => const LinearGradient(colors: [Color(0xFF4FC3F7), Color(0xFF29B6F6)]).createShader(b),
                            child: const Icon(Icons.waves, size: 48, color: Colors.white),
                          ),
                          SizedBox(height: isLandscape ? 2 : 8),
                          const Text('OMBAX', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, letterSpacing: 8, color: Colors.white)),
                          Container(width: 40, height: 2, margin: const EdgeInsets.only(top: 6), decoration: BoxDecoration(color: const Color(0xFF4FC3F7), borderRadius: BorderRadius.circular(2))),
                        ],
                      ),
                      SizedBox(height: isLandscape ? 8 : 20),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: isLandscape ? 40 : 16),
                          child: GridView.count(
                            crossAxisCount: isLandscape ? 3 : 2,
                            childAspectRatio: isLandscape ? 1.1 : 0.88,
                            crossAxisSpacing: 14,
                            mainAxisSpacing: 14,
                            children: [
                              _premiumCard(context, 0, 'Ombax', 'FREE', 'Ombax • Real-time • No Paywall', const Color(0xFF123A4A), const Color(0xFF0A2A3A), Icons.nightlight_round, isFree: true),
                              _premiumCard(context, 1, 'VIP Gold', 'VIP GOLD', 'Gold • Priority • Exclusive', const Color(0xFF3A2E12), const Color(0xFF1F1A0A), Icons.emoji_events, isLocked: true),
                              _premiumCard(context, 2, 'OMBAX PRO', '\$124,000', '+1.84% ↗ Live Market', const Color(0xFF0F2F1F), const Color(0xFF0A1F15), Icons.shield, isPro: true),
                              _premiumCard(context, 3, 'Voice Harbor', 'Real-time\nCommunication', 'Active 12 Channels', const Color(0xFFE8F5E9), const Color(0xFFC8E6C9), Icons.hearing, isLight: true),
                              _premiumCard(context, 4, 'AI LIBRA', 'AI Analytics Assistant', 'Insights • 24/7 • 96.8%', const Color(0xFF1A2342), const Color(0xFF0F1A2E), Icons.balance, isLibra: true),
                              _premiumCard(context, 5, 'Private Assistant', 'Wave Assistant • Online', 'Wave Assistant • Online', const Color(0xFFFFFFFF), const Color(0xFFF5F5F5), Icons.support_agent, isLight: true, isPrivate: true),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(isLandscape ? 8 : 16),
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.04),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.white.withOpacity(0.08)),
                        ),
                        child: const Text('100% FREE • SECURE • PREMIUM • REAL-TIME', style: TextStyle(fontSize: 9, letterSpacing: 2.5, color: Colors.white38, fontWeight: FontWeight.w600)),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _premiumCard(BuildContext context, int idx, String title, String sub, String desc, Color c1, Color c2, IconData ic, {bool isLocked=false, bool isPro=false, bool isFree=false, bool isLight=false, bool isLibra=false, bool isPrivate=false}) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => MainNavigation(initialIndex: idx))),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: [c1, c2]),
          borderRadius: BorderRadius.circular(22),
          border: Border.all(color: isLight ? Colors.white.withOpacity(0.8) : Colors.white.withOpacity(0.1), width: 1),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 15, offset: const Offset(0, 8)), BoxShadow(color: c1.withOpacity(0.3), blurRadius: 20, offset: const Offset(0, 0))],
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(padding: const EdgeInsets.all(8), decoration: BoxDecoration(color: isLight ? Colors.black.withOpacity(0.06) : Colors.white.withOpacity(0.08), borderRadius: BorderRadius.circular(10)), child: Icon(ic, color: isPro ? const Color(0xFF4CAF50) : isLibra ? const Color(0xFFD4AF37) : isLight ? const Color(0xFF0A1931) : Colors.white70, size: 18)),
              if (isLocked) Container(padding: const EdgeInsets.all(5), decoration: BoxDecoration(color: const Color(0xFFD4AF37).withOpacity(0.2), shape: BoxShape.circle), child: const Icon(Icons.lock, color: Color(0xFFD4AF37), size: 14))
              else if (isFree) Container(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4), decoration: BoxDecoration(color: const Color(0xFF2E7D32), borderRadius: BorderRadius.circular(20), boxShadow: [BoxShadow(color: const Color(0xFF2E7D32).withOpacity(0.4), blurRadius: 8)]), child: const Text('FREE', style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold, color: Colors.white))),
            ]),
            const Spacer(),
            Text(title, style: TextStyle(fontSize: isPro ? 14 : 17, fontWeight: FontWeight.w800, color: isLight ? const Color(0xFF0A1931) : Colors.white, letterSpacing: 0.5)),
            const SizedBox(height: 4),
            Text(sub, style: TextStyle(fontSize: isPro ? 20 : 11, fontWeight: isPro ? FontWeight.w900 : FontWeight.w600, color: isPro ? const Color(0xFF4CAF50) : isLibra ? const Color(0xFF4FC3F7) : isLight ? const Color(0xFF37474F) : Colors.white.withOpacity(0.7), height: isLight && !isPrivate ? 1.1 : 1.2)),
            const SizedBox(height: 4),
            Text(desc, style: TextStyle(fontSize: 9, color: isLight ? Colors.black45 : Colors.white.withOpacity(0.35), fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
