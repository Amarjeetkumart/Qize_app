import 'package:flutter/material.dart';

class AnswerButtons extends StatelessWidget {
  const AnswerButtons({super.key, required this.ans, required this.onTap});

  final String ans;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            backgroundColor: const Color.fromARGB(255, 7, 1, 58),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            )),
        child: Text(
          ans,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
