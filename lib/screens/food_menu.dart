import 'package:flutter/material.dart';
import 'package:give_me_a_sign/widgets/learn_card.dart';
import 'package:give_me_a_sign/models/cards.dart';
import 'package:give_me_a_sign/screens/card_page.dart';
import 'package:give_me_a_sign/constants/assets.dart';

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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CardPage(
                          card: Cards(
                              title: 'Water',
                              image: kWaterIcon,
                              gif: kWaterGif),
                        );
                      }));
                    },
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/food_cards/apple.png',
                    label: 'Apple',
                    left: 52,
                    color: Color(0xFFAF4747),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CardPage(
                          card: Cards(
                              title: 'Apple',
                              image: kAppleIcon,
                              gif: kAppleGif),
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
                    image: 'assets/images/food_cards/banana.png',
                    label: 'Banana',
                    left: 37.0,
                    color: Color(0xFF866100),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CardPage(
                          card: Cards(
                              title: 'Banana',
                              image: kBananaIcon,
                              gif: kBananaGif),
                        );
                      }));
                    },
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/food_cards/milk.png',
                    label: 'Milk',
                    left: 55,
                    color: Color(0XFF0069A8),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CardPage(
                          card: Cards(
                              title: 'Milk', image: kMilkIcon, gif: kMilkGif),
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
                    image: 'assets/images/food_cards/samosa.png',
                    label: 'Samosa',
                    left: 40.0,
                    color: Color(0xFF9F5906),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CardPage(
                          card: Cards(
                              title: 'Samosa',
                              image: kSamosaIcon,
                              gif: kSamosaGif),
                        );
                      }));
                    },
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/food_cards/icecream.png',
                    label: 'Ice Cream',
                    color: Color(0xFF794C00),
                    left: 33,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CardPage(
                          card: Cards(
                              title: 'Ice Icream',
                              image: kIceCreamIcon,
                              gif: kIceCreamGif),
                        );
                      }));
                    },
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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CardPage(
                          card: Cards(
                              title: 'Bread',
                              image: kBreadIcon,
                              gif: kBreadGif),
                        );
                      }));
                    },
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/food_cards/cake.png',
                    label: 'Cake',
                    left: 55.0,
                    color: Color(0xFFCD3838),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CardPage(
                          card: Cards(
                              title: 'Cake', image: kCakeIcon, gif: kCakeGif),
                        );
                      }));
                    },
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
