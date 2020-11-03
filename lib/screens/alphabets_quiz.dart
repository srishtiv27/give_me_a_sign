import 'package:flutter/material.dart';
import 'package:give_me_a_sign/models/quizbrain.dart';

QuizBrain quizBrain = QuizBrain();

class AlphabetsQuiz extends StatefulWidget {
  @override
  _AlphabetsQuizState createState() => _AlphabetsQuizState();
}

class _AlphabetsQuizState extends State<AlphabetsQuiz> {
//  List<Icon> scoreKeeper = [];
//  void checkAnswer(String userPickedAnswer) {
//    String correctAnswer = quizBrain.getCorrectAnswer(_alphabets);
//
//    setState(() {
//      //On the next line, you can also use if (quizBrain.isFinished()) {}, it does the same thing.
//      if (quizBrain.isFinished() == true) {
//        //TODO Step 4 Part A - show an alert using rFlutter_alert,
//
//        //This is the code for the basic alert from the docs for rFlutter Alert:
//        //Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();
//
//        //Modified for our purposes:
//        Alert(
//          context: context,
//          title: 'Finished!',
//          desc: 'You\'ve reached the end of the quiz.',
//        ).show();
//
//        //TODO Step 4 Part C - reset the questionNumber,
//        quizBrain.reset();
//
//        //TODO Step 4 Part D - empty out the scoreKeeper.
//        scoreKeeper = [];
//      }
//
//      //TODO: Step 6 - If we've not reached the end, ELSE do the answer checking steps below 👇
//      else {
//        if (userPickedAnswer == correctAnswer) {
//          scoreKeeper.add(Icon(
//            Icons.check,
//            color: Colors.green,
//          ));
//        } else {
//          scoreKeeper.add(Icon(
//            Icons.close,
//            color: Colors.red,
//          ));
//        }
//        quizBrain.nextQuestion();
//      }
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
