import 'package:capek_mikir/config/app_theme.dart';
import 'package:capek_mikir/provider/app_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SolutionScreen extends StatefulWidget {
  const SolutionScreen({super.key});

  @override
  State<SolutionScreen> createState() => _SolutionScreenState();
}

class _SolutionScreenState extends State<SolutionScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final quiz = context.watch<AppStateProvider>();
    final isWide = MediaQuery.of(context).size.width >= 700;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Review Jawaban"),
        centerTitle: true,
      ),
      body: isWide
          ? _buildWideLayout(context, quiz)
          : _buildNarrowLayout(context, quiz),
    );
  }

  Widget _buildNarrowLayout(BuildContext context, AppStateProvider quiz) {
    return ListView.builder(
      padding: const EdgeInsets.all(AppTheme.spacingLg),
      itemCount: quiz.questions.length,
      itemBuilder: (context, index) =>
          _buildQuestionCard(context, quiz, index),
    );
  }

  Widget _buildWideLayout(BuildContext context, AppStateProvider quiz) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left sidebar - list of questions
        SizedBox(
          width: 300,
          child: Container(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            child: ListView.builder(
              padding: const EdgeInsets.all(AppTheme.spacingMd),
              itemCount: quiz.questions.length,
              itemBuilder: (context, index) {
                final isSelected = _selectedIndex == index;
                final question = quiz.questions[index];
                final userAnswer = quiz.getAnswerFor(index);
                final correctAnswer = question.solution;
                final isCorrect = userAnswer == correctAnswer;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: AppTheme.spacingSm),
                    padding: const EdgeInsets.all(AppTheme.spacingMd),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Theme.of(context).colorScheme.primary
                          : Colors.transparent,
                      borderRadius:
                      BorderRadius.circular(AppTheme.radiusMd),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          isCorrect
                              ? Icons.check_circle_rounded
                              : Icons.cancel_rounded,
                          color: isCorrect ? Colors.green : Colors.red,
                          size: 20,
                        ),
                        const SizedBox(width: AppTheme.spacingSm),
                        Expanded(
                          child: Text(
                            "Soal ${index + 1}",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                              color: isSelected
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(context).colorScheme.onSurface,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        // Right side - detail view
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppTheme.spacingLg),
            child: _buildQuestionDetail(
              context,
              quiz,
              _selectedIndex,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildQuestionDetail(
      BuildContext context, AppStateProvider quiz, int index) {
    final question = quiz.questions[index];
    final userAnswer = quiz.getAnswerFor(index);
    final correctAnswer = question.solution;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Soal ${index + 1}",
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: AppTheme.spacingSm),
        Text(
          question.problem,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            height: 1.4,
          ),
        ),
        const SizedBox(height: AppTheme.spacingLg),
        ...List.generate(question.choices.length, (optIndex) {
          final option = question.choices[optIndex];
          final isUserAnswer = option == userAnswer;
          final isCorrect = option == correctAnswer;

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
        }),
        const SizedBox(height: AppTheme.spacingMd),
        if (question.explanation.trim().isNotEmpty)
          Container(
            margin: const EdgeInsets.only(top: AppTheme.spacingMd),
            padding: const EdgeInsets.symmetric(
              horizontal: AppTheme.spacingMd,
              vertical: AppTheme.spacingMd,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(AppTheme.radiusMd),
              border: Border.all(
                color: Theme.of(context).colorScheme.tertiary.withValues(alpha: 0.3),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.lightbulb_rounded,
                  color: Theme.of(context).colorScheme.tertiary,
                  size: 20,
                ),
                const SizedBox(width: AppTheme.spacingMd),
                Expanded(
                  child: Text(
                    question.explanation,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildQuestionCard(
      BuildContext context, AppStateProvider quiz, int index) {
    final question = quiz.questions[index];
    final userAnswer = quiz.getAnswerFor(index);
    final correctAnswer = question.solution;

    return Card(
      elevation: AppTheme.elevationMd,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppTheme.radiusLg),
      ),
      margin: const EdgeInsets.only(bottom: AppTheme.spacingMd),
      child: Padding(
        padding: AppTheme.cardPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Soal ${index + 1}",
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: AppTheme.spacingSm),
            Text(
              question.problem,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                height: 1.4,
              ),
            ),
            const SizedBox(height: AppTheme.spacingLg),
            ...List.generate(question.choices.length, (optIndex) {
              final option = question.choices[optIndex];
              final isUserAnswer = option == userAnswer;
              final isCorrect = option == correctAnswer;

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
            }),
            const SizedBox(height: AppTheme.spacingMd),
            if (question.explanation.trim().isNotEmpty)
              Container(
                margin: const EdgeInsets.only(top: AppTheme.spacingMd),
                padding: const EdgeInsets.symmetric(
                  horizontal: AppTheme.spacingMd,
                  vertical: AppTheme.spacingMd,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.tertiary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(AppTheme.radiusMd),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.tertiary.withValues(alpha: 0.3),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.lightbulb_rounded,
                      color: Theme.of(context).colorScheme.tertiary,
                      size: 20,
                    ),
                    const SizedBox(width: AppTheme.spacingMd),
                    Expanded(
                      child: Text(
                        question.explanation,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
