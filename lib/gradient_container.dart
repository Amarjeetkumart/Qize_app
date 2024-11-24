import 'package:flutter/material.dart';
import 'package:quiz_app/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.startQuiz, {super.key});

  // final Color color1;
  // final Color color2;
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [
            Color.fromARGB(255, 83, 7, 145),
            Color.fromARGB(255, 59, 7, 102)
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/images/quiz-logo.png",
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(
              height: 50,
            ),
            const StyledText("Learn Flutter the fun Way!"),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: TextButton.styleFrom(
                // backgroundColor: const Color.fromARGB(255, 7, 1, 66),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 25,
                ),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
