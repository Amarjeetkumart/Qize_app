import 'package:quiz_app/models/quizquestions.dart';

const questions = [
  Quizquestions(
    "What are the main buikding blocks of Flutter UIs? ",
    ["Widgets", "Components", "Blocks", "Functions"],
  ),
  Quizquestions(
    "What's the purpose of statefulWidget?",
    [
      "Update UI as Data changes",
      "Update Data as UI changes",
      "Ignore Data changes",
      "Reander Ui That does not depens on Data"
    ],
  ),
  Quizquestions(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  Quizquestions(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  Quizquestions(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  )
];
