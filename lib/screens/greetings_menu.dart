import 'package:flutter/material.dart';
import 'package:give_me_a_sign/widgets/learn_card.dart';

class GreetingsMenu extends StatelessWidget {
  static String id = 'greetings_menu';
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
                'Greetings',
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
                    image: 'assets/images/greetings_cards/hello.png',
                    label: 'Hello',
                    color: Color(0xFF945809),
                    left: 52.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/greetings_cards/goodbye.png',
                    label: 'Bye',
                    left: 62,
                    color: Color(0xFFBD1A29),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/greetings_cards/good_morning.png',
                    label: 'Good Morning',
                    left: 10.0,
                    color: Color(0xFFD8A92E),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/greetings_cards/good_evening.png',
                    label: 'Good Evening',
                    left: 13,
                    color: Color(0XFFF44020),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/greetings_cards/good_night.png',
                    label: 'Good Night',
                    left: 22.0,
                    color: Color(0xFF3B2704),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/greetings_cards/how_are_you.png',
                    label: 'How are you?',
                    color: Color(0xFF234938),
                    left: 12,
                  ),
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/greetings_cards/all_the_best.png',
                    label: 'All the best',
                    left: 25.0,
                    color: Color(0xFF071B4D),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/greetings_cards/thank_you.png',
                    label: 'Thank You',
                    left: 25.0,
                    color: Color(0xFF234938),
                  ),
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
