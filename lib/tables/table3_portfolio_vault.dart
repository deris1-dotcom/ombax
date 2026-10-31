import 'package:flutter/material.dart';

class Table3PortfolioVault extends StatefulWidget {
  const Table3PortfolioVault({super.key});
  @override
  State<Table3PortfolioVault> createState() => _Table3State();
}

class _Table3State extends State<Table3PortfolioVault> {
  double balance = 12500.50;
  double pnl = 842.30;

  List<Map<String, dynamic>> assets = [
    {"coin": "BTC", "amount": "0.25", "value": "10537.68", "pnl": "+2.1%"},
    {"coin": "ETH", "amount": "5.2", "value": "13053.04", "pnl": "+1.4%"},
    {"coin": "USDT", "amount": "5000", "value": "5000.00", "pnl": "0.0%"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E1A),
      appBar: AppBar(title: const Text('TABEL 3 - PORTFOLIO VAULT'), backgroundColor: const Color(0xFF0A0E1A)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // BALANCE CARD
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [Color(0xFF0F2A4A), Color(0xFF1A3A5A)]),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('TOTAL BALANCE', style: TextStyle(color: Colors.white54, fontSize: 11)),
                  const SizedBox(height: 6),
                  Text("\$${balance.toStringAsFixed(2)}", style: const TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text("PnL Today: +\$${pnl.toStringAsFixed(2)} (+1.84%)", style: const TextStyle(color: Colors.green, fontSize: 13)),
                ],
              ),
            ),
            const SizedBox(height: 18),
            // ASSET LIST
            ...assets.map((a) => Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(color: const Color(0xFF121A2E), borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    CircleAvatar(backgroundColor: Colors.white10, child: Text(a["coin"][0], style: const TextStyle(color: Colors.white))),
                    const SizedBox(width: 10),
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Text(a["coin"], style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      Text("${a["amount"]} ${a["coin"]}", style: const TextStyle(color: Colors.white54, fontSize: 11)),
                    ]),
                  ]),
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    Text("\$${a["value"]}", style: const TextStyle(color: Colors.white, fontSize: 13)),
                    Text(a["pnl"], style: TextStyle(color: a["pnl"].contains('+') ? Colors.green : Colors.red, fontSize: 11)),
                  ]),
                ],
              ),
            )).toList(),
          ],
        ),
      ),
    );
  }
}
