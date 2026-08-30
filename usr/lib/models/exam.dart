class Question {
  final String text;
  final List<String> options;
  final int correctOptionIndex;

  const Question({
    required this.text,
    required this.options,
    required this.correctOptionIndex,
  });
}

class Exam {
  final String title;
  final String description;
  final List<Question> questions;

  const Exam({
    required this.title,
    required this.description,
    required this.questions,
  });
}
