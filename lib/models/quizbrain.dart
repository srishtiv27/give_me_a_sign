import 'question.dart';
import 'package:give_me_a_sign/constants/assets.dart';

class QuizBrain {
  int questionNumber = 0;
  List<Question> alphabetsQuestionBank = [
    Question(questionImage: kQuizC, questionAnswer: 'C'),
    Question(questionImage: kQuizO, questionAnswer: 'O'),
    Question(questionImage: kQuizE, questionAnswer: 'E'),
    Question(questionImage: kQuizU, questionAnswer: 'U'),
    Question(questionImage: kQuizD, questionAnswer: 'D'),
    Question(questionImage: kQuizT, questionAnswer: 'T'),
    Question(questionImage: kQuizK, questionAnswer: 'K'),
    Question(questionImage: kQuizQ, questionAnswer: 'Q'),
    Question(questionImage: kQuizM, questionAnswer: 'M'),
    Question(questionImage: kQuizG, questionAnswer: 'G'),
  ];

  List<String> alphabetsOption1 = [
    'C',
    'O',
    'R',
    'L',
    'E',
    'T',
    'L',
    'Q',
    'P',
    'T'
  ];
  List<String> alphabetsOption2 = [
    'H',
    'C',
    'E',
    'K',
    'D',
    'Q',
    'B',
    'U',
    'M',
    'J'
  ];
  List<String> alphabetsOption3 = [
    'O',
    'Q',
    'M',
    'U',
    'I',
    'S',
    'K',
    'A',
    'O',
    'G'
  ];

  List<Question> challengeQuestionBank = [
    Question(questionImage: kGrandFatherGif, questionAnswer: 'Grandfather'),
    Question(questionImage: kSamosaGif, questionAnswer: 'Samosa'),
    Question(questionImage: kHappyGif, questionAnswer: 'Happy'),
    Question(questionImage: kPinkGif, questionAnswer: 'Pink'),
    Question(questionImage: kDogGif, questionAnswer: 'Dog'),
    Question(questionImage: kMotherGif, questionAnswer: 'Mother'),
    Question(questionImage: kCakeGif, questionAnswer: 'Cake'),
    Question(questionImage: kSadGif, questionAnswer: 'Sad'),
    Question(questionImage: kGreenGif, questionAnswer: 'Green'),
    Question(questionImage: kCatGif, questionAnswer: 'Cat'),
  ];

  List<String> challengeOption1 = [
    'Grandmother',
    'Violet',
    'Happy',
    'Banana',
    'Dog',
    'Sister',
    'Angry',
    'Sad',
    'Violet',
    'Cat'
  ];

  List<String> challengeOption2 = [
    'Mother',
    'Samosa',
    'Sunday',
    'Pink',
    'Bread',
    'Mother',
    'Cake',
    'Monday',
    'Yellow',
    'Brother'
  ];

  List<String> challengeOption3 = [
    'Grandfather',
    'Cat',
    'Good Morning',
    'Sister',
    'November',
    'Apple',
    'Red',
    'Water',
    'Green',
    'August'
  ];

  void nextQuestion(List<Question> questionBank) {
    if (questionNumber < questionBank.length - 1) {
      questionNumber++;
    }
  }

  String getQuestionImage(List<Question> questionBank) {
    return questionBank[questionNumber].questionImage;
  }

  String getCorrectAnswer(List<Question> questionBank) {
    return questionBank[questionNumber].questionAnswer;
  }

  bool isFinished(List<Question> questionBank) {
    return (questionNumber >= questionBank.length - 1);
  }

  void reset() {
    questionNumber = 0;
  }
}
