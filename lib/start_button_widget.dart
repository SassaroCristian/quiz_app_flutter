import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  // Constructor for StartButton widget
  const StartButton(this.startQuiz, {super.key});

  // Function to start the quiz, passed from parent widget
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: startQuiz,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(255, 0, 8, 255),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Start Quiz',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 5), // Adjust the spacing between icon and text
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
