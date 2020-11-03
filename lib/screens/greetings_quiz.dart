import 'package:flutter/material.dart';
import 'package:give_me_a_sign/models/quizbrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:give_me_a_sign/widgets/options_button.dart';
import 'package:give_me_a_sign/models/buttons.dart';
import 'package:give_me_a_sign/screens/quizzes_menu.dart';

QuizBrain quizBrain = QuizBrain();

class GreetingsQuiz extends StatefulWidget {
  static String id = 'greetings_quiz';
  @override
  _GreetingsQuizState createState() => _GreetingsQuizState();
}

class _GreetingsQuizState extends State<GreetingsQuiz> {
  int scoreKeeper = 0;
  Button button1 = Button(
      label: quizBrain.greetingsOption1[quizBrain.questionNumber],
      color: Color(0xFF42436B));
  Button button2 = Button(
      label: quizBrain.greetingsOption2[quizBrain.questionNumber],
      color: Color(0xFF42436B));
  Button button3 = Button(
      label: quizBrain.greetingsOption3[quizBrain.questionNumber],
      color: Color(0xFF42436B));

  void checkAnswer(Button button) {
    String userPickedAnswer = button.label;
    String correctAnswer =
        quizBrain.getCorrectAnswer(quizBrain.greetingsQuestionBank);
    setState(() {
      if (userPickedAnswer == correctAnswer) {
        setState(() {
          button.color = Colors.green;
        });
        scoreKeeper++;
      } else {
        setState(() {
          button.color = Colors.red;
          if (button1.label == correctAnswer) {
            setState(() {
              button1.color = Colors.green;
            });
          } else if (button2.label == correctAnswer) {
            setState(() {
              button2.color = Colors.green;
            });
          } else {
            setState(() {
              button3.color = Colors.green;
            });
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272727),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 60.0, right: 20.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Guess The Greeting',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE4E3DF),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  quizBrain.getQuestionImage(quizBrain.greetingsQuestionBank),
                  height: 275,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            OptionButton(
              label: button1.label,
              color: button1.color,
              fontSize: 35.0,
              onPressed: button1.enabled
                  ? () {
                      checkAnswer(button1);
                      setState(() {
                        button2.enabled = false;
                        button3.enabled = false;
                      });
                    }
                  : null,
            ),
            SizedBox(
              height: 30.0,
            ),
            OptionButton(
              label: button2.label,
              color: button2.color,
              fontSize: 35.0,
              onPressed: button2.enabled
                  ? () {
                      checkAnswer(button2);
                      setState(() {
                        button1.enabled = false;
                        button3.enabled = false;
                      });
                    }
                  : null,
            ),
            SizedBox(
              height: 30.0,
            ),
            OptionButton(
              label: button3.label,
              color: button3.color,
              fontSize: 35.0,
              onPressed: button3.enabled
                  ? () {
                      checkAnswer(button3);
                      setState(() {
                        button1.enabled = false;
                        button2.enabled = false;
                      });
                    }
                  : null,
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              child: Text(
                'Next',
                style: TextStyle(color: Color(0xFFE4E3DF)),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(color: Color(0xFFE4E3DF)),
              ),
              onPressed: () {
                setState(() {
                  if (quizBrain.isFinished(quizBrain.greetingsQuestionBank)) {
                    Alert(
                      closeFunction: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pop(context);
                        Navigator.pushNamed(context, QuizzesMenu.id);
                      },
                      buttons: [
                        DialogButton(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.pop(context);
                            Navigator.pushNamed(context, QuizzesMenu.id);
                          },
                          color: Colors.blueAccent,
                        ),
                      ],
                      onWillPopActive: true,
                      context: context,
                      title: 'Finished!',
                      desc:
                          'You\'ve reached the end of the quiz. Your score was $scoreKeeper out of ${quizBrain.greetingsQuestionBank.length}',
                    ).show();
                    quizBrain.reset();
                    scoreKeeper = 0;
                  }
                  quizBrain.nextQuestion(quizBrain.greetingsQuestionBank);
                  button1.enabled = true;
                  button2.enabled = true;
                  button3.enabled = true;
                  button1.color = Color(0xFF42436B);
                  button2.color = Color(0xFF42436B);
                  button3.color = Color(0xFF42436B);
                  button1.label =
                      quizBrain.greetingsOption1[quizBrain.questionNumber];
                  button2.label =
                      quizBrain.greetingsOption2[quizBrain.questionNumber];
                  button3.label =
                      quizBrain.greetingsOption3[quizBrain.questionNumber];
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
