import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/start_button_widget.dart';

class LandingPage extends StatelessWidget {
  // Constructor for LandingPage widget
  const LandingPage(this.switchScreen, {super.key});
  final void Function()
      switchScreen; // Function to switch screens, passed from parent widget

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Widget to display the app logo
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical:
                  20), // Padding between the top of the column and the image
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(
                200, 255, 255, 255), // Adjusting image color
          ),
        ),
        // Text widget displaying a message to the user
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Text(
            'Learn Flutter the fun way!!!',
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white), // Text styling
          ),
        ),
        // StartButton widget triggering a function when pressed
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: StartButton(
              switchScreen), // Creating a StartButton widget with a callback function
        ),
      ],
    );
  }
}
