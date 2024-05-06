import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) => ElevatedButton.icon(
        onPressed: startQuiz,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(255, 0, 8, 255)),
          shape:
              MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          )),
        ),
        icon: const Icon(
          Icons.arrow_forward_ios_rounded,
        ),
        label: const Text(
          'Start Quiz',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      );
}
