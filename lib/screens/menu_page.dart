import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  static String id = 'menu_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272727),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
          child: Column(
            children: <Widget>[
              Text(
                'Choose a card to get started',
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE4E3DF),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image.asset(
                  'assets/images/learn4.jpg',
                  height: 190.0,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Image.asset(
                  'assets/images/games5.jpg',
                  height: 190.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
