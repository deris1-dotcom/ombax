// lib/tables/table4_voice_harbor_widgets.dart
// Voice Harbor Widgets - Deep Ocean Blue Theme

import 'package:flutter/material.dart';

class VoicePanel extends StatelessWidget {
  final IconData icon;
  final String title;
  final String sub;
  const VoicePanel({super.key, required this.icon, required this.title, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF0F243E),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFF38BDF8).withOpacity(0.35), width: 1),
        boxShadow: [BoxShadow(color: const Color(0xFF38BDF8).withOpacity(0.15), blurRadius: 10)],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: const Color(0xFF38BDF8), size: 28),
          const SizedBox(height: 6),
          Text(title, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11)),
          Text(sub, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white60, fontSize: 9)),
        ],
      ),
    );
  }
}

class AiSummaryVoiceFooter extends StatelessWidget {
  const AiSummaryVoiceFooter({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF0A1A2E),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0xFF38BDF8).withOpacity(0.3)),
      ),
      child: const Row(
        children: [
          Icon(Icons.mic_none, color: Color(0xFF38BDF8), size: 18),
          SizedBox(width: 8),
          Text('AI SUMMARY', style: TextStyle(color: Color(0xFF38BDF8), fontWeight: FontWeight.bold, fontSize: 11)),
          SizedBox(width: 10),
          Expanded(child: Text('Voice Harbor Active • 3 Live Rooms • Low Latency • Encrypted',
              style: TextStyle(color: Colors.white60, fontSize: 10))),
        ],
      ),
    );
  }
}
