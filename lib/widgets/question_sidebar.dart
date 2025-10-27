import 'package:capek_mikir/config/app_theme.dart';
import 'package:capek_mikir/provider/app_state_provider.dart';
import 'package:flutter/material.dart';

class QuestionSidebar extends StatelessWidget {
  final AppStateProvider quiz;

  const QuestionSidebar({
    super.key,
    required this.quiz,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Daftar Soal',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: AppTheme.spacingMd),
        Expanded(
          child: GridView.builder(
            itemCount: quiz.questions.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
              childAspectRatio: 1,
              mainAxisSpacing: AppTheme.spacingSm,
              crossAxisSpacing: AppTheme.spacingSm,
            ),
            itemBuilder: (_, i) {
              final isCurrent = i == quiz.currentIndex;
              final isAnswered = quiz.getAnswerFor(i) != null;

              final bgColor = isCurrent
                  ? theme.colorScheme.primary
                  : (isAnswered
                  ? theme.colorScheme.secondary
                  : theme.colorScheme.surfaceContainerHighest);

              final textColor = isCurrent || isAnswered
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.onSurface;

              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: bgColor,
                  foregroundColor: textColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(AppTheme.radiusMd),
                  ),
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(36, 36),
                  elevation: isCurrent ? AppTheme.elevationMd : 0,
                ),
                onPressed: () => quiz.jumpToQuestion(i),
                child: Text(
                  "${i + 1}",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
