// lib/tables/table1_ombax_free_widgets.dart
// OMBAX FREE - Tabel 1 - Widgets - Simple 3-4 Panel
// Part 2 of 2 - Companion to table1_ombax_free_dashboard.dart

import 'package:flutter/material.dart';

class SimplePanelCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String description;
  final Color accent;

  const SimplePanelCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.accent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF0F1F3C).withOpacity(0.85),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: accent.withOpacity(0.3), width: 1),
        boxShadow: [
          BoxShadow(
            color: accent.withOpacity(0.15),
            blurRadius: 12,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: accent.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: accent, size: 28),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15)),
                const SizedBox(height: 2),
                Text(subtitle, style: TextStyle(color: accent.withOpacity(0.9), fontSize: 12)),
                Text(description, style: const TextStyle(color: Colors.white54, fontSize: 11)),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios, color: accent.withOpacity(0.5), size: 14),
        ],
      ),
    );
  }
}

class UpgradePromptCard extends StatelessWidget {
  const UpgradePromptCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFD4AF37).withOpacity(0.25),
            const Color(0xFF5EEAD4).withOpacity(0.15),
          ],
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFD4AF37), width: 1.2),
      ),
      child: Row(
        children: [
          const Icon(Icons.rocket_launch_rounded, color: Color(0xFFD4AF37), size: 32),
          const SizedBox(width: 14),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Unlock PRO 🚀', style: TextStyle(color: Color(0xFFD4AF37), fontWeight: FontWeight.bold, fontSize: 16)),
                Text('Lihat Live Profit Today +\$500 Potential • Turquoise Lagoon',
                    style: TextStyle(color: Color(0xFF5EEAD4), fontSize: 12)),
                Text('FREE cuma permukaan, PRO menyelam sampai \$500/day',
                    style: TextStyle(color: Colors.white70, fontSize: 11)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(color: const Color(0xFFD4AF37), borderRadius: BorderRadius.circular(20)),
            child: const Text('GO PRO', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12)),
          ),
        ],
      ),
    );
  }
}

class AiSummaryFooter extends StatelessWidget {
  const AiSummaryFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF0A1A33),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.3)),
      ),
      child: const Row(
        children: [
          Icon(Icons.psychology, color: Color(0xFFD4AF37), size: 20),
          SizedBox(width: 8),
          Text('AI SUMMARY', style: TextStyle(color: Color(0xFFD4AF37), fontWeight: FontWeight.bold, fontSize: 12)),
          SizedBox(width: 12),
          Expanded(
            child: Text('OMBAX FREE Active • Starter Free Tier • Ready To Upgrade',
                style: TextStyle(color: Color(0xFF93C5FD), fontSize: 11)),
          ),
        ],
      ),
    );
  }
}
