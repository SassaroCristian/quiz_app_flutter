import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/answer_button.dart';
import 'package:quiz_app_flutter/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String data) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  void answerQuestion(String selectedAnswers) {
    widget.onSelectAnswer(selectedAnswers);
    // 3 way of acheving the same result
    // currentQuestionIndex = currentQuestionIndex + 1;
    // currentQuestionIndex += 1; //increments the value by one, but could increment it by two or more if needed
    setState(() {
      currentQuestionIndex++; //increment the value by one andjust one
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            child: Text(
              currentQuestion.text,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswers().map((data) {
            return AnswerButton(
                answerText: data,
                onTap: () {
                  answerQuestion(data);
                });
          })
        ],
      ),
    );
  }
}
