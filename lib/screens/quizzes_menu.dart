import 'package:flutter/material.dart';
import 'package:give_me_a_sign/screens/learn_menu.dart';
import 'package:give_me_a_sign/screens/resources_menu.dart';

class QuizzesMenu extends StatelessWidget {
  static String id = 'quizzes_menu';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272727),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
        child: Column(
          children: <Widget>[
            Text(
              'Choose a topic to be tested on',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE4E3DF),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image.asset(
                    'assets/images/quizzes/alphabets_quiz.png',
                    height: 180.0,
                  ),
                ),
                Positioned(
                  left: 40.0,
                  bottom: 10.0,
                  child: Text(
                    'Alphabets',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lobster',
                      color: Color(0xFFE698BB),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image.asset(
                    'assets/images/quizzes/days_quiz.png',
                    height: 180.0,
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  left: 45.0,
                  child: Text(
                    'Days and Months',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lobster',
                      color: Color(0xFFCEE0FF),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image.asset(
                    'assets/images/quizzes/challenge_quiz.png',
                    height: 180.0,
                  ),
                ),
                Positioned(
                  bottom: 8.0,
                  left: 90.0,
                  child: Text(
                    'Challenge',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lobster',
                      color: Color(0xFF2D6A89),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
