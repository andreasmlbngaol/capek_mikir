import 'package:capek_mikir/config/router.dart';
import 'package:capek_mikir/config/app_theme.dart';
import 'package:capek_mikir/provider/app_state_provider.dart';
import 'package:capek_mikir/provider/user_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quiz = context.watch<AppStateProvider>();
    final user = context.watch<UserStateProvider>();

    // <CHANGE> Calculate score percentage
    final percentage = (quiz.score / quiz.questions.length * 100).toStringAsFixed(0);
    final isPerfect = quiz.score == quiz.questions.length;
    final isGood = quiz.score >= quiz.questions.length * 0.7;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Hasil Quiz"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppTheme.spacingXl),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // <CHANGE> Improved score display with visual feedback
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
                  child: Column(
                    children: [
                      Text(
                        isPerfect
                            ? "🎉 Kelaz, ${user.name}!"
                            : isGood
                            ? "👏 Not bad, ${user.name}!"
                            : "💪 Cih dasar ${user.name} kroco!",
                        style:
                        Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppTheme.spacingXl),

                // Score Display
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
                        style:
                        Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onPrimaryContainer,
                        ),
                      ),
                      const SizedBox(height: AppTheme.spacingMd),
                      Text(
                        percentage,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall
                            ?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppTheme.spacingXl),

                // Buttons
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    style: AppTheme.filledButtonStyle,
                    icon: const Icon(Icons.visibility),
                    onPressed: () {
                      context.push(AppRoutes.solution);
                    },
                    label: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppTheme.spacingSm,
                      ),
                      child: Text("Lihat Review Jawaban"),
                    ),
                  ),
                ),
                const SizedBox(height: AppTheme.spacingMd),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    style: AppTheme.outlinedButtonStyle,
                    icon: const Icon(Icons.home_rounded),
                    onPressed: () {
                      quiz.stopTimer();
                      context.read<UserStateProvider>().clearUser();
                      context.go(AppRoutes.home);
                    },
                    label: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppTheme.spacingSm,
                      ),
                      child: Text("Kembali ke Home"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}