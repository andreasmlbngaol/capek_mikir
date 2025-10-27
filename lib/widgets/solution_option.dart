import 'package:capek_mikir/config/app_theme.dart';
import 'package:flutter/material.dart';

class SolutionOption extends StatelessWidget {
  final String option;
  final bool isCorrect;
  final bool isUserAnswer;

  const SolutionOption({
    super.key,
    required this.option,
    required this.isCorrect,
    required this.isUserAnswer,
  });

  @override
  Widget build(BuildContext context) {
    Color? bgColor;
    Color? borderColor;
    IconData iconData;
    Color iconColor;

    if (isCorrect) {
      bgColor = Colors.green.withValues(alpha: 0.1);
      borderColor = Colors.green;
      iconData = Icons.check_circle_rounded;
      iconColor = Colors.green;
    } else if (isUserAnswer && !isCorrect) {
      bgColor = Colors.red.withValues(alpha: 0.1);
      borderColor = Colors.red;
      iconData = Icons.cancel_rounded;
      iconColor = Colors.red;
    } else {
      iconData = Icons.circle_outlined;
      iconColor = Colors.grey;
    }

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: AppTheme.spacingSm,
      ),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(AppTheme.radiusMd),
        border: Border.all(
          color: borderColor ?? Colors.grey.shade300,
          width: borderColor != null ? 1.5 : 1,
        ),
      ),
      child: ListTile(
        title: Text(
          option,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        leading: Icon(
          iconData,
          color: iconColor,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppTheme.spacingMd,
          vertical: AppTheme.spacingSm,
        ),
      ),
    );
  }
}
