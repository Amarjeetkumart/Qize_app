class Quizquestions {
  const Quizquestions(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswer() {
    final shuffeldList = List.of(answers);
    shuffeldList.shuffle();
    return shuffeldList;
  }
}
