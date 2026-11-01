import 'package:flutter/material.dart';
class Table3PortfolioVault extends StatelessWidget {
  const Table3PortfolioVault({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E1A),
      appBar: AppBar(title: const Text('TABEL 3 - PORTFOLIO VAULT'), backgroundColor: const Color(0xFF0A0E1A)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(gradient: const LinearGradient(colors: [Color(0xFF0F2A4A), Color(0xFF1A3A5A)]), borderRadius: BorderRadius.circular(16)),
          child: const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('TOTAL BALANCE', style: TextStyle(color: Colors.white54, fontSize: 11)),
            Text('\$12500.50', style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
            Text('PnL +\$842.30', style: TextStyle(color: Colors.green)),
          ]),
        ),
      ),
    );
  }
}
