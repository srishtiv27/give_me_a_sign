import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  static String id = 'menu_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272727),
      body: Padding(
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
              height: 30.0,
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image.asset(
                    'assets/images/learn.jpg',
                    height: 180.0,
                  ),
                ),
                Positioned(
                  left: 35.0,
                  bottom: 15.0,
                  child: Text(
                    'Learn',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lobster',
                      color: Color(0xFF1A303D),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image.asset(
                    'assets/images/games.jpg',
                    height: 180.0,
                  ),
                ),
                Positioned(
                  right: 50.0,
                  child: Text(
                    'Games &\nQuizzes',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lobster',
                      color: Color(0xFF2A2B40),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image.asset(
                    'assets/images/resources.png',
                    height: 180.0,
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  left: 90.0,
                  child: Text(
                    'Resources',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lobster',
                      color: Color(0xFF492D41),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
