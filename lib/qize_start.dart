import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/result_screen.dart';

class QizeStart extends StatefulWidget {
  const QizeStart({super.key});

  @override
  State<QizeStart> createState() {
    return _QizeStart();
  }
}

class _QizeStart extends State<QizeStart> {
  List<String> selectedAnswer = [];
  var activeScreen = "start_screen";

  void switchScreen() {
    setState(() {
      activeScreen = "question_screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        // selectedAnswer = [];
        activeScreen = "result_screen";
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = "question_screen";
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = GradientContainer(switchScreen);

    if (activeScreen == "question_screen") {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == "result_screen") {
      screenWidget = ResultScreen(
        choosenAnswer: selectedAnswer,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: screenWidget,
        ),
      ),
    );
  }
}
