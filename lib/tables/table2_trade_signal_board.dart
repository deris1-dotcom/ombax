import 'package:flutter/material.dart';
class Table2TradeSignalBoard extends StatelessWidget {
  const Table2TradeSignalBoard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E1A),
      appBar: AppBar(title: const Text('TABEL 2 - TRADE SIGNAL'), backgroundColor: const Color(0xFF0A0E1A)),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(color: const Color(0xFF121A2E), borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.green.withOpacity(0.5))),
            child: const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('BTC/USDT', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), Text('10:42 ACTIVE', style: TextStyle(color: Colors.white54, fontSize: 11))]),
              Text('BUY \$42150', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
            ]),
          ),
        ],
      ),
    );
  }
}
