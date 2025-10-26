import 'package:capek_mikir/screens/home_screen.dart';
import 'package:capek_mikir/screens/quiz_screen.dart';
import 'package:capek_mikir/screens/score_screen.dart';
import 'package:capek_mikir/screens/solution_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static const String home = "/home";
  static const String quiz = "/quiz";
  static const String score = "/score";
  static const String solution = "/solution";
}

GoRouter createRouter() {
  return GoRouter(
    initialLocation: AppRoutes.home,
    routes: [
      GoRoute(
        path: AppRoutes.home,
        name: "Home",
        builder: (context, state) => const HomeScreen()
      ),
      GoRoute(
        path: AppRoutes.quiz,
        name: "Quiz",
        builder: (context, state) => const QuizScreen()
      ),
      GoRoute(
        path: AppRoutes.score,
        name: "Score",
        builder: (context, state) => const ScoreScreen()
      ),
      GoRoute(
        path: AppRoutes.solution,
        name: "Solution",
        builder: (context, state) => const SolutionScreen()
      )
    ]
  );
}