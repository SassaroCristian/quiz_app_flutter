import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'the question...',
            style: TextStyle(
                color: Colors.white, fontSize: 29, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(answerText: 'answer text1', onTap: () {}),
          const SizedBox(
            height: 15,
          ),
          AnswerButton(answerText: 'answer text2', onTap: () {}),
          const SizedBox(
            height: 15,
          ),
          AnswerButton(answerText: 'answer text3', onTap: () {}),
        ],
      ),
    );
  }
}
