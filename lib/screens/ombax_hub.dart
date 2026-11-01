import 'package:flutter/material.dart';
import '../tables/table2_trade_signal_board.dart';
import '../tables/table3_portfolio_vault.dart';
import '../tables/table4_voice_harbor_dashboard.dart';
import '../tables/table5_ai_libra_dashboard.dart';
import '../tables/table6_storage_vault.dart';

// Fungsi di luar class biar gak error _hubCard
Widget hubCard(BuildContext context, String title, String sub, IconData icon, Widget page) {
  return GestureDetector(
    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
    child: Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color(0xFF121A2E),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.green, size: 28),
          const SizedBox(height: 6),
          Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
          Text(sub, style: const TextStyle(color: Colors.white54, fontSize: 10)),
        ],
      ),
    ),
  );
}

class OmbaxHub extends StatelessWidget {
  const OmbaxHub({super.key});

  @override
  Widget build(BuildContext context) {
    double price = 42150.75;
    return Container(
      color: const Color(0xFF0A0E1A),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.white10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('OMBAX PRO LIVE', style: TextStyle(color: Colors.white54, fontSize: 10)),
                        Text('\$${price.toStringAsFixed(2)}', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
                        const Text('+1.84% Agora Ready', style: TextStyle(color: Colors.green, fontSize: 11)),
                      ],
                    ),
                    Container(
                      width: 60, height: 40,
                      decoration: BoxDecoration(color: Colors.green.withOpacity(0.15), borderRadius: BorderRadius.circular(8)),
                      child: const Icon(Icons.show_chart, color: Colors.green),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 1.3,
                children: [
                  hubCard(context, 'TABEL 2', 'Trade Signal', Icons.signal_cellular_alt, const Table2TradeSignalBoard()),
                  hubCard(context, 'TABEL 3', 'Portfolio Vault', Icons.account_balance_wallet, const Table3PortfolioVault()),
                  hubCard(context, 'TABEL 4', 'Voice Harbor', Icons.mic, const Table4VoiceHarborDashboard()),
                  hubCard(context, 'TABEL 5', 'AI Libra', Icons.psychology, const Table5AiLibraDashboard()),
                  hubCard(context, 'TABEL 6', 'Private Vault', Icons.folder_special, const Table6StorageVault()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
