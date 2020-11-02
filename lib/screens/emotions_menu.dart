import 'package:flutter/material.dart';
import 'package:give_me_a_sign/widgets/learn_card.dart';

class EmotionsMenu extends StatelessWidget {
  static String id = 'emotions_menu';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272727),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 60.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                'Emotions',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE4E3DF),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/emotions_cards/happy.png',
                    label: 'Happy',
                    color: Color(0xFF244F9B),
                    left: 45.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/emotions_cards/sad.png',
                    label: 'Sad',
                    left: 58,
                    color: Color(0xFF94114D),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/emotions_cards/sorry.png',
                    label: 'Sorry',
                    left: 50.0,
                    color: Color(0xFFC66934),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/emotions_cards/angry.png',
                    label: 'Angry',
                    left: 45,
                    color: Color(0XFF303382),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
