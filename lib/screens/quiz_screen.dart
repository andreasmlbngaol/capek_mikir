import 'package:capek_mikir/config/router.dart';
import 'package:capek_mikir/config/app_theme.dart';
import 'package:capek_mikir/provider/app_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:capek_mikir/models/question.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _QuizContent();
  }
}

class _QuizContent extends StatelessWidget {
  const _QuizContent();

  @override
  Widget build(BuildContext context) {
    final quiz = context.watch<AppStateProvider>();
    final question = quiz.currentQuestion!;

    if (quiz.isTimeUp) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        quiz.calculateScore();
        context.go(AppRoutes.score);
      });
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth > 700;

        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Soal ${quiz.currentIndex + 1} / ${quiz.questions.length}",
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: AppTheme.spacingLg),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppTheme.spacingMd,
                      vertical: AppTheme.spacingSm,
                    ),
                    decoration: BoxDecoration(
                      color: quiz.remainingSeconds <= 10
                          ? Theme.of(context).colorScheme.errorContainer
                          : Theme.of(context).colorScheme.primaryContainer,
                      borderRadius:
                      BorderRadius.circular(AppTheme.radiusMd),
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
                  ),
                ),
              ),
              if (!isWide)
                IconButton(
                  icon: const Icon(Icons.list_alt_rounded),
                  onPressed: () => _showQuestionList(context, quiz),
                ),
            ],
          ),
          body: Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(AppTheme.spacingLg),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: constraints.maxHeight,
                          ),
                          child: IntrinsicHeight(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // ✅ Soal
                                Text(
                                  question.problem,
                                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    height: 1.4,
                                  ),
                                ),
                                const SizedBox(height: AppTheme.spacingXl),

                                // ✅ Pilihan jawaban
                                ..._buildChoices(context, quiz, question),
                                const Spacer(),

                                // ✅ Tombol navigasi
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: OutlinedButton.icon(
                                        style: AppTheme.outlinedButtonStyle,
                                        onPressed:
                                        quiz.isFirst ? null : quiz.previousQuestion,
                                        icon: const Icon(Icons.arrow_back),
                                        label: const Text("Previous"),
                                      ),
                                    ),
                                    const SizedBox(width: AppTheme.spacingMd),
                                    Expanded(
                                      child: FilledButton.icon(
                                        style: AppTheme.filledButtonStyle,
                                        onPressed: quiz.isLast
                                            ? () {
                                          quiz.calculateScore();
                                          context.go(AppRoutes.score);
                                        }
                                            : quiz.nextQuestion,
                                        label: Text(quiz.isLast ? "Selesai" : "Next"),
                                        icon: const Icon(Icons.arrow_forward),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              // ✅ Sidebar hanya tampil di layar lebar
              if (isWide)
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Container(
                    padding: const EdgeInsets.all(AppTheme.spacingLg),
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                      ),
                    ),
                    child: _buildQuestionSidebar(context, quiz),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }

  List<Widget> _buildChoices(
      BuildContext context, AppStateProvider quiz, Question question) {
    return question.choices.map((choice) {
      final selected = quiz.selectedAnswer == choice;
      return Container(
        margin: const EdgeInsets.only(bottom: AppTheme.spacingMd),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: selected
                ? Theme.of(context).colorScheme.primary
                : Colors.transparent,
            foregroundColor: selected
                ? Theme.of(context).colorScheme.onPrimary
                : Theme.of(context).colorScheme.onSurface,
            padding: const EdgeInsets.symmetric(
              vertical: AppTheme.spacingLg,
              horizontal: AppTheme.spacingMd,
            ),
            side: BorderSide(
              color: selected
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.outline,
              width: selected ? 2 : 1,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppTheme.radiusMd),
            ),
          ),
          onPressed: () => quiz.selectAnswer(choice),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              choice,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      );
    }).toList();
  }

  Widget _buildQuestionSidebar(BuildContext context, AppStateProvider quiz) {
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

              final textColor =
              isCurrent || isAnswered ? Theme.of(context).colorScheme.onPrimary : Theme.of(context).colorScheme.onSurface;

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
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void _showQuestionList(BuildContext context, AppStateProvider quiz) {
    final theme = Theme.of(context);

    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(AppTheme.spacingLg),
          child: Wrap(
            children: [
              GridView.builder(
                shrinkWrap: true,
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

                  final textColor =
                  isCurrent || isAnswered ? Theme.of(context).colorScheme.onPrimary : Theme.of(context).colorScheme.onSurface;

                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: bgColor,
                      foregroundColor: textColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(AppTheme.radiusMd),
                      ),
                      elevation: isCurrent ? AppTheme.elevationMd : 0,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      quiz.jumpToQuestion(i);
                    },
                    child: Text(
                      "${i + 1}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}