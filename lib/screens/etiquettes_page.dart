import 'package:flutter/material.dart';
import 'package:give_me_a_sign/constants/strings.dart';

class EtiquettesPage extends StatelessWidget {
  static String id = 'etiquettes_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272727),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 60.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Text(
                  'Etiquettes',
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE4E3DF),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 275.0,
                    width: 200.0,
                    child: Text(
                      kEtiquettesPara1,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Color(0xFFE4E3DF),
                        fontSize: 19,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Image.asset(
                    'assets/images/resources/etiquettes_page.png',
                    height: 250.0,
                  ),
                ],
              ),
              Text(
                kEtiquettesPara2 + '\n\n' + kEtiquettesPara3,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Color(0xFFE4E3DF),
                  fontSize: 19,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'DO\'s',
                style: TextStyle(
                  color: Color(0xFFE4E3DF),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                kDosPara,
                style: TextStyle(
                  color: Color(0xFFE4E3DF),
                  fontSize: 19,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'DON\'TS ',
                style: TextStyle(
                  color: Color(0xFFE4E3DF),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                kDontsPara,
                style: TextStyle(
                  color: Color(0xFFE4E3DF),
                  fontSize: 19,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
