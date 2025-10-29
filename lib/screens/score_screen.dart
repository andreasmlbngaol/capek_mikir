import 'package:capek_mikir/config/router.dart';
import 'package:capek_mikir/config/app_theme.dart';
import 'package:capek_mikir/provider/app_state_provider.dart';
import 'package:capek_mikir/provider/user_state_provider.dart';
import 'package:capek_mikir/widgets/score_display_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quiz = context.watch<AppStateProvider>();
    final user = context.watch<UserStateProvider>();

    final percentage =
    (quiz.score / quiz.questions.length * 100).toStringAsFixed(0);
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
                ScoreDisplayCard(
                  percentage: percentage,
                  userName: user.name!,
                  isPerfect: isPerfect,
                  isGood: isGood,
                ),
                const SizedBox(height: AppTheme.spacingXl),
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
                      child: Text("Kembali"),
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
