import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final ranks = [
      {'rank': '#1', 'name': 'Alex_Grand', 'score': '24,580', 'trophy': '🥇'},
      {'rank': '#2', 'name': 'SpeedyTile', 'score': '18,410', 'trophy': '🥈'},
      {'rank': '#3', 'name': 'PuzzleKing', 'score': '16,200', 'trophy': '🥉'},
      {'rank': '#14', 'name': 'You (Current)', 'score': '8,420', 'trophy': '⭐'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Leaderboards', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        backgroundColor: AppTheme.surface,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: ranks.length,
        itemBuilder: (context, i) {
          final r = ranks[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.card, borderRadius: BorderRadius.circular(16)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(r['trophy'] as String, style: const TextStyle(fontSize: 22)),
                    const SizedBox(width: 12),
                    Text(r['name'] as String, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16)),
                  ],
                ),
                Text(r['score'] as String, style: const TextStyle(fontWeight: FontWeight.bold, color: AppTheme.primary, fontSize: 18)),
              ],
            ),
          );
        },
      ),
    );
  }
}
