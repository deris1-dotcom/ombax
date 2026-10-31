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
  crossAxisCount: 2,
  shrinkWrap: true,
  children: [
    _hubCard(context, 'TABEL 2', 'Trade Signal', Icons.signal_cellular_alt, const Table2TradeSignalBoard()),
    _hubCard(context, 'TABEL 3', 'Portfolio Vault', Icons.account_balance_wallet, const Table3PortfolioVault()),
    _hubCard(context, 'TABEL 4', 'Voice Harbor', Icons.mic, const Table4VoiceHarborDashboard()),
    _hubCard(context, 'TABEL 5', 'AI Libra', Icons.psychology, const Table5AiLibraDashboard()),
  ],
)

Widget _hubCard(BuildContext context, String title, String sub, IconData icon, Widget page) {
  return GestureDetector(
    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
    child: Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(color: const Color(0xFF121A2E), borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.white10)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(icon, color: Colors.green, size: 28),
        const SizedBox(height: 6),
        Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
        Text(sub, style: const TextStyle(color: Colors.white54, fontSize: 10)),
      ]),
    ),
  );
}
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
      onTap: () {
  // Tap Hub Card - sudah di Hub, gak perlu pindah
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('OMBAX PRO LIVE ACTIVE')),
  );
},
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
