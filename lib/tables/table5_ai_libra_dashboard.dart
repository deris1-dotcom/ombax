// lib/tables/table5_ai_libra_dashboard.dart
// OMBAX AI LIBRA - Tabel 5 - Balance & Prediction AI
// LOCK Version - Cosmic Libra Theme

import 'package:flutter/material.dart';
import 'table5_ai_libra_widgets.dart';

class Table5AiLibraDashboard extends StatelessWidget {
  const Table5AiLibraDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0A1A),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0E0A1A), Color(0xFF1A1233), Color(0xFF0E0A1A)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _buildHeader(),
                const SizedBox(height: 18),
                _buildBalanceBar(),
                const SizedBox(height: 18),
                _buildLibraGrid(),
                const SizedBox(height: 16),
                const AiSummaryLibraFooter(),
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
          width: 58,
          height: 58,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFA78BFA), width: 2.5),
            boxShadow: [BoxShadow(color: const Color(0xFFA78BFA).withOpacity(0.5), blurRadius: 15)],
            image: const DecorationImage(
              image: AssetImage('assets/logo/ombax_wave_compass.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 12),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('AI.OMBAX LIBRA - Balance Engine',
                  style: TextStyle(color: Color(0xFFA78BFA), fontWeight: FontWeight.bold, fontSize: 15)),
              Text('AI Libra • Tabel 5 • 96.8%',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              Text('Cosmic Balance • ML Prediction',
                  style: TextStyle(color: Colors.white54, fontSize: 11)),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: const Color(0xFFA78BFA).withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0xFFA78BFA).withOpacity(0.5)),
          ),
          child: const Text('96.8% ML', style: TextStyle(color: Color(0xFFA78BFA), fontWeight: FontWeight.bold, fontSize: 10)),
        ),
      ],
    );
  }

  Widget _buildBalanceBar() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color(0xFF1E1633).withOpacity(0.9),
          const Color(0xFF2A1F4A).withOpacity(0.9),
        ]),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFA78BFA).withOpacity(0.3)),
      ),
      child: Row(
        children: [
          const Icon(Icons.balance, color: Color(0xFFA78BFA), size: 28),
          const SizedBox(width: 10),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Libra Balance Active ⚖️', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13)),
                Text('Risk: Balanced • 28 Pairs Analyzed • Bias: Neutral-Bullish • Confidence High',
                    style: TextStyle(color: Colors.white60, fontSize: 11)),
              ],
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFFA78BFA), width: 2),
            ),
            child: const Center(child: Text('♎', style: TextStyle(color: Color(0xFFA78BFA), fontSize: 18))),
          ),
        ],
      ),
    );
  }

  Widget _buildLibraGrid() {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1.05,
      children: const [
        LibraPanel(icon: Icons.balance, title: 'Balance Engine', sub: 'Libra Core'),
        LibraPanel(icon: Icons.auto_awesome, title: 'ML 96.8%', sub: 'Prediction'),
        LibraPanel(icon: Icons.insights, title: 'All Pairs AI', sub: '28 Pairs Scan'),
        LibraPanel(icon: Icons.security, title: 'Risk Balance', sub: 'Auto Hedge'),
        LibraPanel(icon: Icons.timeline, title: 'Bias Detector', sub: 'Neutral-Bullish'),
        LibraPanel(icon: Icons.psychology, title: 'Sentiment AI', sub: 'Market Mood'),
        LibraPanel(icon: Icons.speed, title: 'Speed Libra', sub: '12ms Calc'),
        LibraPanel(icon: Icons.history_edu, title: 'Backtest Vault', sub: '5Y Data'),
        LibraPanel(icon: Icons.workspace_premium, title: 'Libra Elite', sub: 'Top Signal'),
      ],
    );
  }
}
