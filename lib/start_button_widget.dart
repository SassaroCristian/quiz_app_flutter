import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({super.key});
  @override
  Widget build(BuildContext context) => ElevatedButton(
      onPressed:
          () {}, // TODO: Add functionality to start the game when pressed
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 0, 8, 255)),
        shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        )),
      ),
      child: const Text(
        'Start Quiz',
        style: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
      ));
}
