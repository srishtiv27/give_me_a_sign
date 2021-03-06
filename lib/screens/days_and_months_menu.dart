import 'package:flutter/material.dart';
import 'package:give_me_a_sign/screens/months_page.dart';
import 'package:give_me_a_sign/screens/days_page.dart';

class DaysAndMonthsMenu extends StatelessWidget {
  static String id = 'days_and_months_menu';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272727),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 60.0, right: 20.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Days and Months',
                style: TextStyle(
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE4E3DF),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DaysPage.id);
              },
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image.asset(
                      'assets/images/days.png',
                      height: 270,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 10.0,
                    left: 120,
                    child: Text(
                      'Days',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lobster',
                        color: Color(0xFF3D3D2A),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MonthsPage.id);
              },
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, MonthsPage.id);
                },
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      child: Image.asset(
                        'assets/images/months.png',
                        height: 270,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 10.0,
                      left: 110,
                      child: Text(
                        'Months',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Lobster',
                          color: Color(0xFF3D3D2A),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
