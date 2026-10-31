// lib/tables/table6_private_assistant_dashboard.dart
// OMBAX PRIVATE ASSISTANT - Tabel 6 - Sea Glass Gold Exclusive
// LOCK Version - Final Table Exclusive Concierge

import 'package:flutter/material.dart';
import 'table6_private_assistant_widgets.dart';

class Table6PrivateAssistantDashboard extends StatelessWidget {
  const Table6PrivateAssistantDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0F0D),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0A0F0D), Color(0xFF12211B), Color(0xFF0A1410)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _buildHeader(),
                const SizedBox(height: 18),
                _buildConciergeBar(),
                const SizedBox(height: 18),
                _buildAssistantGrid(),
                const SizedBox(height: 16),
                const AiSummaryAssistantFooter(),
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
            border: Border.all(color: const Color(0xFFD4AF37), width: 2.5),
            boxShadow: [BoxShadow(color: const Color(0xFFD4AF37).withOpacity(0.5), blurRadius: 15)],
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
              Text('AI.OMBAX PRIVATE ASSISTANT',
                  style: TextStyle(color: Color(0xFFD4AF37), fontWeight: FontWeight.bold, fontSize: 14)),
              Text('Sea Glass Gold • Tabel 6',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              Text('Concierge Exclusive • 1-on-1',
                  style: TextStyle(color: Colors.white54, fontSize: 11)),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [Color(0xFFD4AF37), Color(0xFF88D8C0)]),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text('ELITE', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10)),
        ),
      ],
    );
  }

  Widget _buildConciergeBar() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color(0xFF1A2A22).withOpacity(0.9),
          const Color(0xFF1E2F26).withOpacity(0.9),
        ]),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.4)),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: const Color(0xFFD4AF37), width: 2),
                  image: const DecorationImage(
                    image: AssetImage('assets/logo/ombax_wave_compass.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(width: 10, height: 10, decoration: BoxDecoration(color: Colors.greenAccent, shape: BoxShape.circle, border: Border.all(color: Colors.black, width: 2))),
              ),
            ],
          ),
          const SizedBox(width: 10),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Private Concierge Online 🟢', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13)),
                Text('1-on-1 • Sea Glass Gold • Ready to Assist • Response < 2min',
                    style: TextStyle(color: Colors.white60, fontSize: 11)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(color: const Color(0xFFD4AF37), borderRadius: BorderRadius.circular(20)),
            child: const Text('CHAT', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 11)),
          ),
        ],
      ),
    );
  }

  Widget _buildAssistantGrid() {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1.05,
      children: const [
        AssistantPanel(icon: Icons.support_agent, title: '1-on-1 Chat', sub: 'Private Line'),
        AssistantPanel(icon: Icons.task_alt, title: 'Task Manager', sub: 'Auto Handle'),
        AssistantPanel(icon: Icons.schedule, title: 'Schedule Trade', sub: 'Concierge Set'),
        AssistantPanel(icon: Icons.account_balance_wallet, title: 'Portfolio Care', sub: 'Elite Review'),
        AssistantPanel(icon: Icons.lock_person, title: 'Privacy Vault', sub: 'Sea Glass Gold'),
        AssistantPanel(icon: Icons.call, title: 'Direct Call', sub: 'CEO Line'),
        AssistantPanel(icon: Icons.auto_awesome, title: 'AI Brief Daily', sub: 'Morning Brief'),
        AssistantPanel(icon: Icons.card_membership, title: 'Island Access', sub: 'Mastermind VIP'),
        AssistantPanel(icon: Icons.diamond, title: 'Diamond Concierge', sub: 'Top Tier'),
      ],
    );
  }
}
