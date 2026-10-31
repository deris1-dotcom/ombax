import 'package:flutter/material.dart';
class Table2TradeSignalBoard extends StatefulWidget {
  const Table2TradeSignalBoard({super.key});
  @override
  State<Table2TradeSignalBoard> createState() => _Table2State();
}
class _Table2State extends State<Table2TradeSignalBoard> {
  List<Map<String, dynamic>> signals = [
    {"pair": "BTC/USDT", "type": "BUY", "price": "42150.75", "time": "10:42:11", "status": "ACTIVE"},
    {"pair": "ETH/USDT", "type": "SELL", "price": "2510.20", "time": "10:40:05", "status": "HIT TP"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E1A),
      appBar: AppBar(title: const Text('TABEL 2 - TRADE SIGNAL'), backgroundColor: const Color(0xFF0A0E1A)),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: signals.length,
        itemBuilder: (context, i) {
          final s = signals[i];
          bool isBuy = s["type"] == "BUY";
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(color: const Color(0xFF121A2E), borderRadius: BorderRadius.circular(12), border: Border.all(color: isBuy ? Colors.green.withOpacity(0.5) : Colors.red.withOpacity(0.5))),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text(s["pair"], style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), Text("${s["time"]} • ${s["status"]}", style: const TextStyle(color: Colors.white54, fontSize: 11))]),
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [Container(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4), decoration: BoxDecoration(color: isBuy ? Colors.green : Colors.red, borderRadius: BorderRadius.circular(6)), child: Text(s["type"], style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12))), Text("\$${s["price"]}", style: const TextStyle(color: Colors.white))]),
            ]),
          );
        },
      ),
    );
  }
}
