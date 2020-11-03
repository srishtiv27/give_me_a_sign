import 'package:flutter/material.dart';
import 'package:give_me_a_sign/screens/etiquettes_page.dart';

class ResourcesMenu extends StatelessWidget {
  static String id = 'resources_menu';
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
                'Resources',
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
                Navigator.pushNamed(context, EtiquettesPage.id);
              },
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image.asset(
                      'assets/images/resources/etiquette.png',
                      height: 270,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 10.0,
                    left: 80,
                    child: Text(
                      'Etiquettes',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lobster',
                        color: Color(0xFF2F4040),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image.asset(
                    'assets/images/resources/communication_tips.png',
                    height: 270,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  left: 10,
                  child: Text(
                    'Communication Tips',
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
          ],
        ),
      ),
    );
  }
}
