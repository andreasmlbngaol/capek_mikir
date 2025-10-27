import 'package:capek_mikir/config/app_theme.dart';
import 'package:capek_mikir/provider/app_state_provider.dart';
import 'package:flutter/material.dart';

class QuizTimer extends StatelessWidget {
  final AppStateProvider quiz;

  const QuizTimer({
    super.key,
    required this.quiz,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppTheme.spacingMd,
        vertical: AppTheme.spacingSm,
      ),
      decoration: BoxDecoration(
        color: quiz.remainingSeconds <= 10
            ? Theme.of(context).colorScheme.errorContainer
            : Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(AppTheme.radiusMd),
      ),
      child: Text(
        quiz.formattedTime,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: quiz.remainingSeconds <= 10
              ? Theme.of(context).colorScheme.error
              : Theme.of(context).colorScheme.primary,
          fontSize: 16,
        ),
      ),
    );
  }
}
