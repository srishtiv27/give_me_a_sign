import 'question.dart';
import 'package:give_me_a_sign/constants/assets.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _alphabetsQuestionBank = [
    Question(questionImage: kC, questionAnswer: 'C'),
    Question(questionImage: kO, questionAnswer: 'O'),
    Question(questionImage: kE, questionAnswer: 'E'),
    Question(questionImage: kU, questionAnswer: 'U'),
    Question(questionImage: kD, questionAnswer: 'D'),
    Question(questionImage: kT, questionAnswer: 'T'),
    Question(questionImage: kK, questionAnswer: 'K'),
    Question(questionImage: kQ, questionAnswer: 'Q'),
    Question(questionImage: kM, questionAnswer: 'M'),
    Question(questionImage: kG, questionAnswer: 'G'),
  ];
  void nextQuestion(List<Question> _questionBank) {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionImage(List<Question> _questionBank) {
    return _questionBank[_questionNumber].questionImage;
  }

  String getCorrectAnswer(List<Question> _questionBank) {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished(List<Question> _questionBank) {
    return (_questionNumber >= _questionBank.length - 1);
  }

  void reset() {
    _questionNumber = 0;
  }
}
