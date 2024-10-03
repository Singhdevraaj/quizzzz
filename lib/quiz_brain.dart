import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  final List<Question> _questionBank = [
    Question(
      questionText: 'You can lead a cow down stairs but not up stairs.',
      answerText: false,
    ),
    Question(
      questionText: 'Approximately one quarter of human bones are in the feet.',
      answerText: true,
    ),
    Question(
      questionText: 'A slug\'s blood is green.',
      answerText: true,
    ),
    Question(
      questionText: 'Butterflies taste with their feet.',
      answerText: true,
    ),
    Question(
      questionText: 'A group of flamingos is called a "flamboyance".',
      answerText: true,
    ),
    Question(
      questionText: 'The shortest war in history was between Britain and Zanzibar.',
      answerText: true,
    ),
    Question(
      questionText: 'The Great Wall of China is visible from space.',
      answerText: false,
    ),
    Question(
      questionText: 'There are more stars in the universe than grains of sand on Earth.',
      answerText: true,
    ),
    Question(
      questionText: 'Human nose can detect over 1 trillion different scents.',
      answerText: true,
    ),
    Question(
      questionText: 'A day on Venus is longer than its year.',
      answerText: true,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    } else {
      _questionNumber = 0;
    }
    print('Question no.: $_questionNumber');
    print('QB length: ${_questionBank.length}');
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getAnswerText() {
    return _questionBank[_questionNumber].answerText;
  }

  bool checkEnd() {
    return _questionNumber == _questionBank.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}
