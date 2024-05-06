import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/start_button_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage(this.switchScreen, {super.key});
  final void Function() switchScreen;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical:
                  20), // Padding between the top of the column and the image
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(200, 255, 255, 255),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
              vertical: 20), // Padding between the image and the text
          child: Text(
            'Learn Flutter the fun way!!!',
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 20), // Padding between the text and the button
          child: StartButton(switchScreen),
        ),
      ],
    );
  }
}
