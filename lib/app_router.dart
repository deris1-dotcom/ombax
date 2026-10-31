// lib/app_router.dart
// OMBAX App Router - 6 Tables Navigation LOCK - Upgrade Logic

import 'package:flutter/material.dart';
import 'tables/table1_ombax_free_dashboard.dart';
import 'tables/table2_vip_gold_dashboard.dart';
import 'tables/table3_ombax_pro_dashboard.dart';
import 'tables/table4_voice_harbor_dashboard.dart';
import 'tables/table5_ai_libra_dashboard.dart';
import 'tables/table6_private_assistant_dashboard.dart';
import 'main.dart';

class AppRouter {
  static const String free = '/free';
  static const String vipGold = '/vip-gold';
  static const String pro = '/pro';
  static const String voice = '/voice';
  static const String libra = '/libra';
  static const String private = '/private';
  static const String mainNav = '/main';

  static Map<String, WidgetBuilder> routes = {
    mainNav: (context) => const OmbaxMainNav(),
    free: (context) => const Table1OmbaxFreeDashboard(),
    vipGold: (context) => const Table2VipGoldDashboard(),
    pro: (context) => const Table3OmbaxProDashboard(), // $124K + $500 Today Bos!
    voice: (context) => const Table4VoiceHarborDashboard(),
    libra: (context) => const Table5AiLibraDashboard(),
    private: (context) => const Table6PrivateAssistantDashboard(),
  };

  // Upgrade Logic Bos - FREE -> PRO Hook Bos
  static void goPro(BuildContext context) {
    // Hook Bos biar user FREE Bos tertarik Bos ke PRO Bos
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF0A2F2F),
        title: const Text('Upgrade to PRO? 🚀', style: TextStyle(color: Color(0xFF5EEAD4))),
        content: const Text('Live Profit Today +\$500 Potential (0.01 lot)\nAll-Time High \$124,892.34\nTurquoise Lagoon Engine',
            style: TextStyle(color: Colors.white70)),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Later')),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF5EEAD4)),
            onPressed: () {
              Navigator.pop(ctx);
              Navigator.pushNamed(ctx, pro);
            },
            child: const Text('GO PRO \$124K', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  // Navigate Bos with bottom nav index Bos
  static void navigateToTable(BuildContext context, int index) {
    final mainState = context.findAncestorStateOfType<State<OmbaxMainNav>>();
    // For IndexedStack Bos - will handle via setState in main.dart Bos
  }
}
