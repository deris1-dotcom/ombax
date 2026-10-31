// lib/tables/table5_ai_libra_widgets.dart
// AI Libra Widgets - Cosmic Purple Theme

import 'package:flutter/material.dart';

class LibraPanel extends StatelessWidget {
  final IconData icon;
  final String title;
  final String sub;
  const LibraPanel({super.key, required this.icon, required this.title, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1233),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFA78BFA).withOpacity(0.35), width: 1),
        boxShadow: [BoxShadow(color: const Color(0xFFA78BFA).withOpacity(0.15), blurRadius: 10)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: const Color(0xFFA78BFA), size: 28),
          const SizedBox(height: 6),
          Text(title, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11)),
          Text(sub, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white60, fontSize: 9)),
        ],
      ),
    );
  }
}

class AiSummaryLibraFooter extends StatelessWidget {
  const AiSummaryLibraFooter({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF15102A),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFA78BFA).withOpacity(0.3)),
      ),
      child: const Row(
        children: [
          Text('♎', style: TextStyle(color: Color(0xFFA78BFA), fontSize: 16)),
          SizedBox(width: 8),
          Text('AI SUMMARY', style: TextStyle(color: Color(0xFFA78BFA), fontWeight: FontWeight.bold, fontSize: 11)),
          SizedBox(width: 10),
          Expanded(child: Text('Libra Balance Active • ML 96.8% • 28 Pairs • Risk Balanced',
              style: TextStyle(color: Colors.white60, fontSize: 10))),
        ],
      ),
    );
  }
}
