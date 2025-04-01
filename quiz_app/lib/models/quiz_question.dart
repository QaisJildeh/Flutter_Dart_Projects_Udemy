class QuizQuestion {
  final String _imagePath;
  final String _text = 'What is the name of the plane?';
  final List<String> _answers;

  QuizQuestion(this._imagePath, this._answers);

  String get imagePath => _imagePath;
  String get text => _text;
  List<String> get answers => _answers; 

  List<String> getShuffledAnswers(){
    List<String> shuffledAnswers = List.of(_answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}