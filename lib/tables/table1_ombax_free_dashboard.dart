// lib/tables/table1_ombax_free_dashboard.dart
// OMBAX FREE - Tabel 1 - Starter Complete - Simple Version Foundation
// Author: OMBAX Team - Surabaya 2026

import 'package:flutter/material.dart';
import 'table1_ombax_free_widgets.dart';

class Table1OmbaxFreeDashboard extends StatelessWidget {
  const Table1OmbaxFreeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF020B1A),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF020B1A), Color(0xFF0A2342)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // HEADER OMBAX
                _buildHeader(),
                const SizedBox(height: 24),
                
                // SIMPLE 3-4 PANEL CONCEPT - IDE 2 Journey
                // Besok Bos kita final pilih Ide 1-5 Bos, ini base 4 panel Bos!
                _buildSimplePanels(),
                
                const SizedBox(height: 20),
                const AiSummaryFooter(),
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
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFFD4AF37), width: 2),
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
              Text(
                'AI.OMBAX FREE - Starter Complete',
                style: TextStyle(
                  color: Color(0xFFD4AF37),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Dashboard Overview Tabel 1',
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.15),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.blueAccent.withOpacity(0.3)),
          ),
          child: const Text('Free Basic', style: TextStyle(color: Color(0xFF93C5FD), fontSize: 12)),
        ),
      ],
    );
  }

  Widget _buildSimplePanels() {
    return Column(
      children: [
        // PANEL 1: Free Signals + Basic Access + Analytics
        const SimplePanelCard(
          icon: Icons.sensors,
          title: 'Free Signals Preview',
          subtitle: '3 Signals Today • Basic Access',
          accent: Color(0xFF5EEAD4), // Turquoise Lagoon
          description: 'Preview 3 free signals + limited pairs',
        ),
        const SizedBox(height: 12),
        // PANEL 2: Learning Hub + Standard Features
        const SimplePanelCard(
          icon: Icons.menu_book_rounded,
          title: 'Quick Learn 5 Menit',
          subtitle: 'Tutorials • Standard Features',
          accent: Color(0xFFD4AF37),
          description: 'Belajar cepat 5 menit untuk starter',
        ),
        const SizedBox(height: 12),
        // PANEL 3: Community + Support + Storage
        const SimplePanelCard(
          icon: Icons.groups_rounded,
          title: 'Community Support',
          subtitle: '10GB Free • Community',
          accent: Color(0xFF93C5FD),
          description: 'Join public room & community support',
        ),
        const SizedBox(height: 12),
        // PANEL 4: GOLD CTA UPGRADE - HOOK KE PRO +$500
        const UpgradePromptCard(),
      ],
    );
  }
}
