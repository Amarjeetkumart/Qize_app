import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questionidentifire.dart';

class Summaryitem extends StatelessWidget {
  const Summaryitem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData["User_Answer"] == itemData["Correct_Answer"];

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Questionidentifire(
            questionIndex: itemData["Qustion_index"] as int,
            isCorrectAnswer: isCorrectAnswer,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData["Question"] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  itemData["User_Answer"] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 201, 171, 252),
                  ),
                ),
                Text(
                  itemData["Correct_Answer"] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 181, 254, 246),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
