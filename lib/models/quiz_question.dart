class QuizQuestion {
  const QuizQuestion(
    this.question,
    this.answers,
  );

  final String question;
  final List<String> answers;

  List<String> getSuffledAnswers() {
    final shuffledAnswers = answers.toList()..shuffle();
    return shuffledAnswers;
  }
}
