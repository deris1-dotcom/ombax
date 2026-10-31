// lib/tables/table4_voice_harbor_dashboard.dart
// OMBAX VOICE HARBOR - Tabel 4 - Voice Room Pro
// LOCK Version - Deep Ocean Voice Theme

import 'package:flutter/material.dart';
import 'table4_voice_harbor_widgets.dart';

class Table4VoiceHarborDashboard extends StatelessWidget {
  const Table4VoiceHarborDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF020E1A),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF020E1A), Color(0xFF0A1F33)],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _buildHeader(),
                const SizedBox(height: 18),
                _buildLiveVoiceBar(),
                const SizedBox(height: 18),
                _buildVoiceGrid(),
                const SizedBox(height: 16),
                const AiSummaryVoiceFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Container(
          width: 58,
          height: 58,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: const Color(0xFF38BDF8), width: 2.5),
            boxShadow: [BoxShadow(color: const Color(0xFF38BDF8).withOpacity(0.5), blurRadius: 15)],
            image: const DecorationImage(
              image: AssetImage('assets/logo/ombax_wave_compass.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 12),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('AI.OMBAX VOICE HARBOR',
                  style: TextStyle(color: Color(0xFF38BDF8), fontWeight: FontWeight.bold, fontSize: 15)),
              Text('Voice Room • Tabel 4',
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              Text('Live Voice Pro • Private Harbor',
                  style: TextStyle(color: Colors.white54, fontSize: 11)),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.redAccent.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.redAccent.withOpacity(0.5)),
          ),
          child: Row(
            children: [
              Container(width: 6, height: 6, decoration: const BoxDecoration(color: Colors.redAccent, shape: BoxShape.circle)),
              const SizedBox(width: 5),
              const Text('LIVE', style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold, fontSize: 10)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildLiveVoiceBar() {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF0F243E),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFF38BDF8).withOpacity(0.3)),
      ),
      child: Row(
        children: [
          const Icon(Icons.graphic_eq, color: Color(0xFF38BDF8), size: 28),
          const SizedBox(width: 10),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Harbor Master Live', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13)),
                Text('3 Traders Speaking • 12 Listening • Voice Latency 18ms',
                    style: TextStyle(color: Colors.white60, fontSize: 11)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            decoration: BoxDecoration(color: const Color(0xFF38BDF8), borderRadius: BorderRadius.circular(20)),
            child: const Text('JOIN', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 11)),
          ),
        ],
      ),
    );
  }

  Widget _buildVoiceGrid() {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      childAspectRatio: 1.05,
      children: const [
        VoicePanel(icon: Icons.mic, title: 'Voice Room', sub: 'Live Harbor'),
        VoicePanel(icon: Icons.record_voice_over, title: 'Auto Transcript', sub: 'AI Voice'),
        VoicePanel(icon: Icons.noise_aware, title: 'Noise Cancel', sub: 'Pro Clear'),
        VoicePanel(icon: Icons.groups, title: 'Private Pods', sub: 'VIP Only'),
        VoicePanel(icon: Icons.history, title: 'Replay Vault', sub: '10TB Storage'),
        VoicePanel(icon: Icons.translate, title: 'Live Translate', sub: 'ID ↔ EN'),
        VoicePanel(icon: Icons.security, title: 'Encrypted Voice', sub: 'E2E Secure'),
        VoicePanel(icon: Icons.push_pin, title: 'Pin Signal', sub: 'Voice to Trade'),
        VoicePanel(icon: Icons.workspace_premium, title: 'Captain Table', sub: 'Elite Voice'),
      ],
    );
  }

// Di Table4VoiceHarborDashboard - tambah tombol Attach Storage 1
ElevatedButton(
  onPressed: () async {
    // Ambil file dari Storage 1 (Akses 1)
    final files = await StorageVault(id: 'akses_1').getFiles();
    // Share ke Voice Room
    await voiceRoomTabel4.attachFile(files.first);
  },
  child: Text('Attach from Storage 1'),
)



  
}
