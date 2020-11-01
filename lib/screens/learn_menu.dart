import 'package:flutter/material.dart';
import 'package:give_me_a_sign/widgets/learn_card.dart';

class LearnMenu extends StatelessWidget {
  static String id = 'learn_menu';
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
                'Choose a category',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE4E3DF),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/alphabet.png',
                    label: 'Alphabets',
                    color: Color(0xFF6D002E),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/numbers.png',
                    label: 'Numbers',
                    left: 33,
                    color: Color(0xFF185951),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/calendar.png',
                    label: 'Days &\nMonths',
                    left: 40.0,
                    color: Color(0xFF5D5D34),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/colors.png',
                    label: 'Colours',
                    left: 40,
                    color: Color(0XFF0E284D),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/family.png',
                    label: 'Family',
                    left: 40.0,
                    color: Color(0xFF24423B),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/greetings.png',
                    label: 'Greetings',
                    color: Color(0xFF2A2B3D),
                    left: 32,
                  ),
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/food.png',
                    label: 'Food',
                    left: 50.0,
                    color: Color(0xFF473E34),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/animals.png',
                    label: 'Animals',
                    left: 35.0,
                    color: Color(0xFF332240),
                  ),
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              LearnCard(
                image: 'assets/images/emotions.png',
                label: 'Emotions',
                left: 33,
                color: Color(0xFF2D3644),
              )
            ],
          ),
        ),
      ),
    );
  }
}
