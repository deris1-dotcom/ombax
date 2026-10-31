// lib/tables/table2_vip_gold_widgets.dart
// VIP GOLD Widgets - Gold Sparkles + Black Platinum Theme

import 'package:flutter/material.dart';

class GoldPanel extends StatelessWidget {
  final IconData icon;
  final String title;
  final String sub;
  const GoldPanel({super.key, required this.icon, required this.title, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF151515),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.4), width: 1),
        boxShadow: [BoxShadow(color: const Color(0xFFD4AF37).withOpacity(0.15), blurRadius: 10)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: const Color(0xFFD4AF37), size: 28),
          const SizedBox(height: 6),
          Text(title, textAlign: TextAlign.center, style: const TextStyle(color: Color(0xFFFFE8A0), fontWeight: FontWeight.bold, fontSize: 11)),
          Text(sub, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white60, fontSize: 9)),
        ],
      ),
    );
  }
}

class AiSummaryGoldFooter extends StatelessWidget {
  const AiSummaryGoldFooter({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.3)),
      ),
      child: const Row(
        children: [
          Icon(Icons.auto_awesome, color: Color(0xFFD4AF37), size: 18),
          SizedBox(width: 8),
          Text('AI SUMMARY', style: TextStyle(color: Color(0xFFD4AF37), fontWeight: FontWeight.bold, fontSize: 11)),
          SizedBox(width: 10),
          Expanded(child: Text('OMBAX VIP GOLD Active • Institutional Grade • Premium Access',
              style: TextStyle(color: Colors.white60, fontSize: 10))),
        ],
      ),
    );
  }
}
