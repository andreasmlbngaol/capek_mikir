import 'package:capek_mikir/config/app_theme.dart';
import 'package:flutter/material.dart';

class ScoreDisplayCard extends StatelessWidget {
  final String percentage;
  final String userName;
  final bool isPerfect;
  final bool isGood;

  const ScoreDisplayCard({
    super.key,
    required this.percentage,
    required this.userName,
    required this.isPerfect,
    required this.isGood,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(AppTheme.spacingXl),
          decoration: BoxDecoration(
            color: isPerfect
                ? Colors.green.withValues(alpha: 0.1)
                : isGood
                ? Colors.blue.withValues(alpha: 0.1)
                : Colors.orange.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(AppTheme.radiusXl),
            border: Border.all(
              color: isPerfect
                  ? Colors.green
                  : isGood
                  ? Colors.blue
                  : Colors.orange,
              width: 2,
            ),
          ),
          child: Text(
            isPerfect
                ? "🎉 Kelaz, $userName!"
                : isGood
                ? "👏 Not bad, $userName!"
                : "💪 Cih dasar $userName kroco!",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: AppTheme.spacingXl),
        Container(
          padding: const EdgeInsets.all(AppTheme.spacingXl),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(AppTheme.radiusLg),
          ),
          child: Column(
            children: [
              Text(
                "Skormu",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ),
              const SizedBox(height: AppTheme.spacingMd),
              Text(
                percentage,
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
