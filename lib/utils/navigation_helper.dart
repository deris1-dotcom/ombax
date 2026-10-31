// lib/utils/navigation_helper.dart
// Navigation Helper - Logic Bos 1 APK Bos

import 'package:flutter/material.dart';
import '../app_router.dart';

class NavigationHelper {
  // Quick Nav Bos to each table Bos
  static void toFree(BuildContext context) => Navigator.pushNamed(context, AppRouter.free);
  static void toVipGold(BuildContext context) => Navigator.pushNamed(context, AppRouter.vipGold);
  static void toPro(BuildContext context) => Navigator.pushNamed(context, AppRouter.pro);
  static void toVoice(BuildContext context) => Navigator.pushNamed(context, AppRouter.voice);
  static void toLibra(BuildContext context) => Navigator.pushNamed(context, AppRouter.libra);
  static void toPrivate(BuildContext context) => Navigator.pushNamed(context, AppRouter.private);

  // Hook Bos Upgrade Bos - Dipakai Bos di Tabel 1 FREE Bos button Bos GO PRO Bos
  static void showUpgradeSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF0A1A1A),
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      builder: (ctx) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(width: 40, height: 4, decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(2))),
            const SizedBox(height: 16),
            const Text('Unlock OMBAX PRO Live Profit?', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('💰 Today +\$500 Potential (0.01 lot)\n📈 All-Time \$124,892.34\n🌊 Turquoise Lagoon Engine\n⚡ 28 Pairs Scanned Live',
                style: TextStyle(color: Colors.white70, fontSize: 13)),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF5EEAD4), padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {
                  Navigator.pop(ctx);
                  Navigator.pushNamed(ctx, AppRouter.pro);
                },
                child: const Text('UNLOCK PRO - GO LIVE', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
