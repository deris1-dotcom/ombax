import 'package:flutter/material.dart';

class Table5AiLibraDashboard extends StatelessWidget {
  const Table5AiLibraDashboard({super.key});

  Widget cardItem(String title, String sub, IconData icon) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color(0xFF121A2E),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.purpleAccent, size: 28),
          const SizedBox(height: 6),
          Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
          Text(sub, style: const TextStyle(color: Colors.white54, fontSize: 10)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E1A),
      appBar: AppBar(
        title: const Text('TABEL 5 - AI LIBRA'),
        backgroundColor: const Color(0xFF0A0E1A),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(12),
        childAspectRatio: 1.2,
        children: [
          cardItem('Signal AI Libra', 'Buy/Sell Libra', Icons.psychology),
          cardItem('Dashboard Libra', 'Balance & PnL', Icons.dashboard),
          cardItem('Auto Trade', 'AI Execution', Icons.smart_toy),
          cardItem('History', 'Log Libra', Icons.history),
          cardItem('Libra Vault', 'Private Storage', Icons.folder_special),
          cardItem('AI Summary', 'Daily Report', Icons.summarize),
        ],
      ),
    );
  }
}
