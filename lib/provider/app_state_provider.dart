import 'package:capek_mikir/models/question.dart';
import 'package:flutter/widgets.dart';

class AppStateProvider extends ChangeNotifier {
  final List<Question> _questions = [];
  double score = 0;

  AppStateProvider() {
    _loadAndRandomizeQuestion();
  }

  List<Question> get questions => _questions;

  void _loadAndRandomizeQuestion() {
    _questions.clear();
  }
}