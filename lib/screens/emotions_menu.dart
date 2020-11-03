import 'package:flutter/material.dart';
import 'package:give_me_a_sign/widgets/learn_card.dart';
import 'package:give_me_a_sign/models/cards.dart';
import 'package:give_me_a_sign/screens/card_page.dart';
import 'package:give_me_a_sign/constants/assets.dart';

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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CardPage(
                          card: Cards(
                              title: 'Happy',
                              image: kHappyIcon,
                              gif: kHappyGif),
                        );
                      }));
                    },
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/emotions_cards/sad.png',
                    label: 'Sad',
                    left: 58,
                    color: Color(0xFF94114D),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CardPage(
                          card: Cards(
                              title: 'Sad', image: kSadIcon, gif: kSadGif),
                        );
                      }));
                    },
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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CardPage(
                          card: Cards(
                              title: 'Sorry',
                              image: kSorryIcon,
                              gif: kSorryGif),
                        );
                      }));
                    },
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/emotions_cards/angry.png',
                    label: 'Angry',
                    left: 45,
                    color: Color(0XFF303382),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CardPage(
                          card: Cards(
                              title: 'Angry',
                              image: kAngryIcon,
                              gif: kAngryGif),
                        );
                      }));
                    },
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
