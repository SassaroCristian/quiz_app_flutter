import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/landing_page.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                Color.fromARGB(255, 255, 0, 0),
                Color.fromARGB(255, 0, 30, 255)
              ])),
          child: const Center(
            child: LandingPage(),
          )),
    )),
  );
}
