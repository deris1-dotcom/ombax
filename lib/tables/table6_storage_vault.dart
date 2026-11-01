import 'package:flutter/material.dart';

class Table6StorageVault extends StatelessWidget {
  const Table6StorageVault({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E1A),
      appBar: AppBar(
        title: const Text('TABEL 6 - PRIVATE VAULT'),
        backgroundColor: const Color(0xFF0A0E1A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF121A2E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.green.withOpacity(0.3)),
              ),
              child: const Row(
                children: [
                  Icon(Icons.folder_special, color: Colors.green),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Storage 1 - Primary Vault', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        Text('Linked to Voice Room Tabel 4 - Drag & Drop + Biometric Ready', style: TextStyle(color: Colors.white54, fontSize: 11)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF121A2E),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white10),
              ),
              child: const Row(
                children: [
                  Icon(Icons.security, color: Colors.orange),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Storage 2 - Backup Vault', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        Text('Private backup - Not linked to Voice', style: TextStyle(color: Colors.white54, fontSize: 11)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: const Color(0xFF0F243E),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xFF38BDF8).withOpacity(0.3)),
              ),
              child: const Row(
                children: [
                  Icon(Icons.check_circle, color: Color(0xFF38BDF8), size: 18),
                  SizedBox(width: 8),
                  Text('VAULT ACTIVE - Biometric + PIN 6 Digit + Pattern', style: TextStyle(color: Colors.white60, fontSize: 11)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
