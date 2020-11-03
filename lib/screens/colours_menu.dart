import 'package:flutter/material.dart';
import 'package:give_me_a_sign/screens/card_page.dart';
import 'package:give_me_a_sign/widgets/learn_card.dart';
import 'package:give_me_a_sign/models/cards.dart';

class ColoursMenu extends StatelessWidget {
  static String id = 'colours_menu';
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
                'Choose a colour',
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
                    image: 'assets/images/colour_cards/violet.png',
                    label: 'Violet',
                    color: Color(0xFF9133FA),
                    left: 45.0,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CardPage(
                          card: Cards(
                              title: 'Violet',
                              image:
                                  'assets/images/colour_splash/violet_splash.png',
                              gif: 'assets/images/colours_gifs/violet.gif'),
                        );
                      }));
                    },
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/colour_cards/blue.png',
                    label: 'Blue',
                    left: 52,
                    color: Color(0xFF0F70D4),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/colour_cards/green.png',
                    label: 'Green',
                    left: 48.0,
                    color: Color(0xFF1DD406),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/colour_cards/yellow.png',
                    label: 'Yellow',
                    left: 45,
                    color: Color(0XFFD4BF00),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/colour_cards/orange.png',
                    label: 'Orange',
                    left: 40.0,
                    color: Color(0xFFFF8A00),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/colour_cards/red.png',
                    label: 'Red',
                    color: Color(0xFFD40F0F),
                    left: 58,
                  ),
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/colour_cards/pink.png',
                    label: 'Pink',
                    left: 52.0,
                    color: Color(0xFFFA33BD),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/colour_cards/white.png',
                    label: 'White',
                    left: 45.0,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              LearnCard(
                image: 'assets/images/colour_cards/black.png',
                label: 'Black',
                left: 48,
                color: Color(0xFF2D3644),
              )
            ],
          ),
        ),
      ),
    );
  }
}
