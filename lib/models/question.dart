class Question {
  final String problem;
  final List<String> choices;
  final String solution;
  final String explanation;

  const Question({
    required this.problem,
    required this.choices,
    required this.solution,
    required this.explanation,
  });
}