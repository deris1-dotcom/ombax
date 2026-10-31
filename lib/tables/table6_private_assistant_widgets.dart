// lib/tables/table6_private_assistant_widgets.dart
// Private Assistant Widgets - Sea Glass Gold Theme

import 'package:flutter/material.dart';

class AssistantPanel extends StatelessWidget {
  final IconData icon;
  final String title;
  final String sub;
  const AssistantPanel({super.key, required this.icon, required this.title, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF1A2A22).withOpacity(0.95),
            const Color(0xFF1E3329).withOpacity(0.95),
          ],
        ),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.4), width: 1),
        boxShadow: [BoxShadow(color: const Color(0xFFD4AF37).withOpacity(0.15), blurRadius: 10)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: const Color(0xFF88D8C0), size: 28),
          const SizedBox(height: 6),
          Text(title, textAlign: TextAlign.center, style: const TextStyle(color: Color(0xFFFFE8A0), fontWeight: FontWeight.bold, fontSize: 11)),
          Text(sub, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white60, fontSize: 9)),
        ],
      ),
    );
  }
}

class AiSummaryAssistantFooter extends StatelessWidget {
  const AiSummaryAssistantFooter({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF111F18),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFFD4AF37).withOpacity(0.3)),
      ),
      child: const Row(
        children: [
          Icon(Icons.person_pin_circle, color: Color(0xFFD4AF37), size: 18),
          SizedBox(width: 8),
          Text('AI SUMMARY', style: TextStyle(color: Color(0xFFD4AF37), fontWeight: FontWeight.bold, fontSize: 11)),
          SizedBox(width: 10),
          Expanded(child: Text('Private Assistant Active • Sea Glass Gold • 1-on-1 Concierge • Elite Tier',
              style: TextStyle(color: Colors.white60, fontSize: 10))),
        ],
      ),
    );
  }
}
