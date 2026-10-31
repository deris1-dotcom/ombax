// lib/tables/table2_vip_gold_dashboard.dart
// OMBAX VIP GOLD - Tabel 2 - Premium Gold Edition
// LOCK Version - Great Wave + Compass Star Logo Clean

import 'package:flutter/material.dart';
import 'table2_vip_gold_widgets.dart';

class Table2VipGoldDashboard extends StatelessWidget {
  const Table2VipGoldDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0B),
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topCenter,
            radius: 1.2,
            colors: [Color(0xFF1A1505), Color(0xFF0A0A0B)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _buildHeader(),
                const SizedBox(height: 20),
                _buildGoldGrid(),
                const SizedBox(height: 16),
                const AiSummaryGoldFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFD4AF37), width: 2.5),
            boxShadow: [BoxShadow(color: const Color(0xFFD4AF37).withOpacity(0.4), blurRadius: 15)],
            image: const DecorationImage(
              image: AssetImage('assets/logo/ombax_wave_compass.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 14),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('AI.OMBAX VIP GOLD PRIVATE',
                  style: TextStyle(color: Color(0xFFD4AF37), fontWeight: FontWeight.bold, fontSize: 16)),
              Text('Dashboard Overview Tabel 2',
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
              Text('Institutional Grade • All Pairs',
                  style: TextStyle(color: Colors.white54, fontSize: 12)),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [Color(0xFFD4AF37), Color(0xFFFFD700)]),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text('VIP GOLD', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 11)),
        ),
      ],
    );
  }

  Widget _buildGoldGrid() {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1.1,
      children: const [
        GoldPanel(icon: Icons.workspace_premium, title: 'Pro Signals', sub: 'Institutional Grade'),
        GoldPanel(icon: Icons.all_inclusive, title: 'Unlimited Access', sub: '28 Pairs Scanned'),
        GoldPanel(icon: Icons.vpn_lock, title: 'Private Vault', sub: '10TB Encrypted'),
        GoldPanel(icon: Icons.psychology, title: 'AI Prediction Pro', sub: 'ML 94.2%'),
        GoldPanel(icon: Icons.support_agent, title: 'Direct Line', sub: 'CEO Support'),
        GoldPanel(icon: Icons.autorenew, title: 'Lifetime Updates', sub: 'Forever'),
        GoldPanel(icon: Icons.bolt, title: 'Zero Latency', sub: '2ms Execution'),
        GoldPanel(icon: Icons.code, title: 'Full Source', sub: 'Access'),
        GoldPanel(icon: Icons.emoji_events, title: 'Island Mastermind', sub: 'VIP'),
      ],
    );
  }
}
