import 'package:flutter/material.dart';
import 'package:give_me_a_sign/widgets/learn_card.dart';

class FoodMenu extends StatelessWidget {
  static String id = 'food_menu';
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
                'Food',
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
                    image: 'assets/images/food_cards/water.png',
                    label: 'Water',
                    color: Color(0xFF304C82),
                    left: 45.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/food_cards/apple.png',
                    label: 'Apple',
                    left: 52,
                    color: Color(0xFFAF4747),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/food_cards/banana.png',
                    label: 'Banana',
                    left: 37.0,
                    color: Color(0xFF866100),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/food_cards/milk.png',
                    label: 'Milk',
                    left: 55,
                    color: Color(0XFF0069A8),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/food_cards/samosa.png',
                    label: 'Samosa',
                    left: 40.0,
                    color: Color(0xFF9F5906),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/food_cards/icecream.png',
                    label: 'Ice Cream',
                    color: Color(0xFF794C00),
                    left: 33,
                  ),
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/food_cards/bread.png',
                    label: 'Bread',
                    left: 48.0,
                    color: Color(0xFF765F3F),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/food_cards/cake.png',
                    label: 'Cake',
                    left: 55.0,
                    color: Color(0xFFCD3838),
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
