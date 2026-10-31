// lib/tables/table3_ombax_pro_widgets.dart
// PRO Widgets - Turquoise Lagoon Live Profit Theme

import 'package:flutter/material.dart';

class ProPanel extends StatelessWidget {
  final IconData icon;
  final String title;
  final String sub;
  const ProPanel({super.key, required this.icon, required this.title, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF0F2F2F).withOpacity(0.95),
            const Color(0xFF102E2E).withOpacity(0.95),
          ],
        ),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFF5EEAD4).withOpacity(0.45), width: 1),
        boxShadow: [BoxShadow(color: const Color(0xFF5EEAD4).withOpacity(0.2), blurRadius: 12)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: const Color(0xFF5EEAD4), size: 28),
          const SizedBox(height: 6),
          Text(title, textAlign: TextAlign.center, style: const TextStyle(color: Color(0xFFCCFBF1), fontWeight: FontWeight.bold, fontSize: 11)),
          Text(sub, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white60, fontSize: 9)),
        ],
      ),
    );
  }
}

class AiSummaryProFooter extends StatelessWidget {
  const AiSummaryProFooter({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF0A2222),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFF5EEAD4).withOpacity(0.4)),
      ),
      child: const Row(
        children: [
          Icon(Icons.water, color: Color(0xFF5EEAD4), size: 18),
          SizedBox(width: 8),
          Text('AI SUMMARY', style: TextStyle(color: Color(0xFF5EEAD4), fontWeight: FontWeight.bold, fontSize: 11)),
          SizedBox(width: 10),
          Expanded(child: Text('OMBAX PRO Live • \$124K All-Time High • Today +\$500 Potential (0.01 lot) • Turquoise Lagoon',
              style: TextStyle(color: Colors.white60, fontSize: 10))),
        ],
      ),
    );
  }
}
