import 'package:flutter/material.dart';
import 'package:give_me_a_sign/models/cards.dart';

class CardPage extends StatelessWidget {
  final Cards card;
  CardPage({this.card});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272727),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 60.0, right: 20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                card.title,
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE4E3DF),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Image.asset(
                card.image,
                height: 200,
              ),
              SizedBox(
                height: 30.0,
              ),
              Image.asset(
                card.gif,
                height: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
