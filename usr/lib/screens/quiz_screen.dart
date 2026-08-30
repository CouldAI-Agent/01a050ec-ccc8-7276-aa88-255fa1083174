import 'package:flutter/material.dart';
import '../models/exam.dart';

class QuizScreen extends StatefulWidget {
  final Exam exam;

  const QuizScreen({super.key, required this.exam});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int? selectedOptionIndex;
  int score = 0;
  bool isAnswered = false;

  void _submitAnswer() {
    if (selectedOptionIndex == null) return;
    
    setState(() {
      isAnswered = true;
      if (selectedOptionIndex == widget.exam.questions[currentQuestionIndex].correctOptionIndex) {
        score++;
      }
    });
  }

  void _nextQuestion() {
    if (currentQuestionIndex < widget.exam.questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedOptionIndex = null;
        isAnswered = false;
      });
    } else {
      _showResult();
    }
  }

  void _showResult() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('परिणाम'),
        content: Text('आपका स्कोर: $score / ${widget.exam.questions.length}'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close dialog
              Navigator.of(context).pop(); // Go back to home
            },
            child: const Text('ठीक है'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.exam.questions[currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.exam.title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'प्रश्न ${currentQuestionIndex + 1}/${widget.exam.questions.length}',
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text(
                question.text,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 32),
              ...List.generate(question.options.length, (index) {
                Color getOptionColor() {
                  if (!isAnswered) return Colors.white;
                  if (index == question.correctOptionIndex) return Colors.green.shade100;
                  if (index == selectedOptionIndex && index != question.correctOptionIndex) {
                    return Colors.red.shade100;
                  }
                  return Colors.white;
                }

                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: InkWell(
                    onTap: isAnswered ? null : () {
                      setState(() {
                        selectedOptionIndex = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedOptionIndex == index ? Theme.of(context).primaryColor : Colors.grey.shade300,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        color: getOptionColor(),
                      ),
                      child: Text(
                        question.options[index],
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                );
              }),
              const Spacer(),
              ElevatedButton(
                onPressed: selectedOptionIndex == null ? null : (isAnswered ? _nextQuestion : _submitAnswer),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text(
                  isAnswered 
                    ? (currentQuestionIndex < widget.exam.questions.length - 1 ? 'अगला प्रश्न' : 'परिणाम देखें') 
                    : 'उत्तर दें',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
