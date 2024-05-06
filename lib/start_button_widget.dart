import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  // Constructor for StartButton widget
  const StartButton(this.startQuiz, {super.key});

  // Function to start the quiz, passed from parent widget
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) => ElevatedButton.icon(
        // Trigger the startQuiz function when the button is pressed
        onPressed: startQuiz,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(255, 0, 8, 255)),
          shape:
              MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
        ),
        // Icon displayed on the button
        icon: const Icon(
          Icons.arrow_forward_ios_rounded,
        ),
        // Text label displayed on the button
        label: const Text(
          'Start Quiz',
          style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold), // Text styling
        ),
      );
}
