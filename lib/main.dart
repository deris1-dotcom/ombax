// lib/main.dart
// OMBAX AI - Main App Integration - 6 Tables 1 APK
// LOCK Version - Turquoise Gold Ocean Theme

import 'package:flutter/material.dart';
import 'app_router.dart';
import 'tables/table1_ombax_free_dashboard.dart';
import 'tables/table2_vip_gold_dashboard.dart';
import 'tables/table3_ombax_pro_dashboard.dart';
import 'tables/table4_voice_harbor_dashboard.dart';
import 'tables/table5_ai_libra_dashboard.dart';
import 'tables/table6_private_assistant_dashboard.dart';
import 'config/app_constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const OmbaxApp());
}

class OmbaxApp extends StatelessWidget {
  const OmbaxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI.OMBAX PRO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF021212),
        useMaterial3: true,
      ),
      home: const OmbaxMainNav(),
      routes: AppRouter.routes,
    );
  }
}

class OmbaxMainNav extends StatefulWidget {
  const OmbaxMainNav({super.key});
  @override
  State<OmbaxMainNav> createState() => _OmbaxMainNavState();
}

class _OmbaxMainNavState extends State<OmbaxMainNav> {
  int _currentIndex = 2; // Default Bos di Tabel 3 PRO Bos Live Profit Bos!

  final List<Widget> _pages = const [
    Table1OmbaxFreeDashboard(), // 0 FREE
    Table2VipGoldDashboard(), // 1 VIP GOLD
    Table3OmbaxProDashboard(), // 2 PRO - $124K + $500 Today
    Table4VoiceHarborDashboard(), // 3 VOICE
    Table5AiLibraDashboard(), // 4 LIBRA
    Table6PrivateAssistantDashboard(), // 5 PRIVATE
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF0A1A1A),
          border: Border(top: BorderSide(color: const Color(0xFF5EEAD4).withOpacity(0.3))),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFF0A1A1A),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF5EEAD4),
          unselectedItemColor: Colors.white54,
          selectedFontSize: 9,
          unselectedFontSize: 8,
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.free_breakfast), label: 'FREE'),
            BottomNavigationBarItem(icon: Icon(Icons.workspace_premium), label: 'VIP GOLD'),
            BottomNavigationBarItem(icon: Icon(Icons.diamond), label: 'PRO \$124K'),
            BottomNavigationBarItem(icon: Icon(Icons.mic), label: 'VOICE'),
            BottomNavigationBarItem(icon: Icon(Icons.balance), label: 'LIBRA'),
            BottomNavigationBarItem(icon: Icon(Icons.support_agent), label: 'PRIVATE'),
          ],
        ),
      ),
    );
  }
}
