import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/data/questions.dart';
import 'package:quiz_app_flutter/landing_page.dart';
import 'package:quiz_app_flutter/questions_screen.dart';
import 'package:quiz_app_flutter/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key}); // Constructor for Quiz widget

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  var activeScreen = 'landing-page';

  // Function to switch between screens
  void switchScreen() {
    setState(() {
      // Change the active screen to QuestionsScreen
      activeScreen = 'questions-screen';
      selectedAnswers = [];
    });
  }

  void choseAnswer(String data) {
    selectedAnswers.add(data);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = LandingPage(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: choseAnswer,
      );
    }
    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        switchScreen,
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      // MaterialApp is the root widget of the app
      home: Scaffold(
        // Scaffold provides basic layout structure for the app
        body: Container(
          // Container to hold the main content of the app
          decoration: const BoxDecoration(
            // Decoration to apply gradient background
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color.fromARGB(255, 255, 0, 0),
                Color.fromARGB(255, 0, 0, 255),
              ],
            ),
          ),
          child: Center(
            // Center widget to horizontally and vertically center its child
            child: screenWidget, // Display the currently active screen
          ),
        ),
      ),
    );
  }
}
