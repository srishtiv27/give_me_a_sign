import 'package:flutter/material.dart';
import 'package:give_me_a_sign/widgets/learn_card.dart';

class AnimalsMenu extends StatelessWidget {
  static String id = 'animals_menu';
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
                'Animals',
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
                    image: 'assets/images/animal_cards/dog.png',
                    label: 'Dog',
                    color: Color(0xFF543603),
                    left: 55.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/animal_cards/cat.png',
                    label: 'Cat',
                    left: 60,
                    color: Color(0xFF9F5905),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/animal_cards/bird.png',
                    label: 'Bird',
                    left: 55.0,
                    color: Color(0xFF2D225B),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/animal_cards/fish.png',
                    label: 'Fish',
                    left: 58,
                    color: Color(0XFF2D3D59),
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
