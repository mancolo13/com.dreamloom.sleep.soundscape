import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab3Screen extends StatelessWidget {
  const Tab3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final skins = [
      {'name': 'Classic Warm Amber', 'status': 'Active'},
      {'name': 'Cyberpunk Neon Glow', 'status': 'Unlocked'},
      {'name': 'Dark Obsidian Glass', 'status': 'Reach 2048'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tile Skins & Themes', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: skins.length,
        itemBuilder: (context, i) {
          final s = skins[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(s['name'] as String, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                Text(s['status'] as String, style: const TextStyle(color: AppTheme.primary, fontWeight: FontWeight.bold)),
              ],
            ),
          );
        },
      ),
    );
  }
}
