// lib/tables/table3_ombax_pro_dashboard.dart
// OMBAX PRO - Tabel 3 - $124K Portfolio + Live Profit $500 Today
// LOCK Version - Turquoise Lagoon Live Profit Theme

import 'package:flutter/material.dart';
import 'table3_ombax_pro_widgets.dart';
import 'dart:async';

class Table3OmbaxProDashboard extends StatefulWidget {
  const Table3OmbaxProDashboard({super.key});
  @override
  State<Table3OmbaxProDashboard> createState() => _Table3OmbaxProDashboardState();
}

class _Table3OmbaxProDashboardState extends State<Table3OmbaxProDashboard> {
  double liveProfit = 487.34; // Starting Bos Today
  late Timer timer;

  @override
  void initState() {
    super.initState();
    // Live Profit Logic Bos 0.01 lot all pairs Bos
    timer = Timer.periodic(const Duration(seconds: 3), (t) {
      setState(() {
        liveProfit += (0.5 - (DateTime.now().millisecond % 100) / 100) * 2;
        if (liveProfit > 502) liveProfit = 498.5;
        if (liveProfit < 480) liveProfit = 485.0;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF021212),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF021212), Color(0xFF0A2F2F), Color(0xFF041A1A)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _buildHeader(),
                const SizedBox(height: 18),
                _buildPortfolioHeader(liveProfit),
                const SizedBox(height: 18),
                _buildProGrid(),
                const SizedBox(height: 16),
                const AiSummaryProFooter(),
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
            border: Border.all(color: const Color(0xFF5EEAD4), width: 2.5),
            boxShadow: [BoxShadow(color: const Color(0xFF5EEAD4).withOpacity(0.5), blurRadius: 18)],
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
              Text('AI.OMBAX PRO - Live Profit Engine',
                  style: TextStyle(color: Color(0xFF5EEAD4), fontWeight: FontWeight.bold, fontSize: 15)),
              Text('Dashboard Tabel 3 • \$124K Portfolio',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              Text('Live Turquoise Lagoon Theme • 0.01 Lot Pro Logic',
                  style: TextStyle(color: Colors.white54, fontSize: 11)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPortfolioHeader(double profit) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color(0xFF0F3A3A).withOpacity(0.9),
          const Color(0xFF123E3E).withOpacity(0.9),
        ]),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF5EEAD4), width: 1.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('All-Time Portfolio', style: TextStyle(color: Colors.white60, fontSize: 11)),
              Text('\$124,892.34', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
              Text('All-Time High • Locked', style: TextStyle(color: Color(0xFF5EEAD4), fontSize: 10)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text('Live Profit Today', style: TextStyle(color: Colors.white60, fontSize: 11)),
              Text('+\$${profit.toStringAsFixed(2)}',
                  style: const TextStyle(color: Color(0xFF5EEAD4), fontSize: 22, fontWeight: FontWeight.bold)),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(color: const Color(0xFF5EEAD4), borderRadius: BorderRadius.circular(10)),
                child: const Text('0.01 Lot Potential', style: TextStyle(color: Colors.black, fontSize: 9, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProGrid() {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1.05,
      children: const [
        ProPanel(icon: Icons.water_drop, title: 'Live Signals', sub: 'Turquoise Engine'),
        ProPanel(icon: Icons.auto_graph, title: 'All Pairs Scan', sub: '28 Pairs • 0.01'),
        ProPanel(icon: Icons.bolt, title: 'Instant Exec', sub: '2ms Zero Latency'),
        ProPanel(icon: Icons.shield_moon, title: 'Private Logic', sub: 'Encrypted Vault'),
        ProPanel(icon: Icons.currency_exchange, title: '\$500/day Potential', sub: 'Live Profit'),
        ProPanel(icon: Icons.psychology_alt, title: 'AI Libra Pro', sub: 'ML 96.8%'),
        ProPanel(icon: Icons.mic, title: 'Voice Harbor', sub: 'Pro Room'),
        ProPanel(icon: Icons.person_pin, title: 'Private Assistant', sub: 'Sea Glass Gold'),
        ProPanel(icon: Icons.diamond, title: 'Island Elite', sub: 'Top Tier'),
      ],
    );
  }
}
