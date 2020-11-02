import 'package:flutter/material.dart';
import 'package:give_me_a_sign/widgets/learn_card.dart';

class FamilyMenu extends StatelessWidget {
  static String id = 'family_menu';
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
                    image: 'assets/images/family_cards/mother.png',
                    label: 'Mother',
                    color: Color(0xFFD14C64),
                    left: 45.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/family_cards/father.png',
                    label: 'Father',
                    left: 48,
                    color: Color(0xFFB89427),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/family_cards/sister.png',
                    label: 'Sister',
                    left: 48.0,
                    color: Color(0xFF721548),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/family_cards/brother.png',
                    label: 'Brother',
                    left: 45,
                    color: Color(0XFF645982),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  LearnCard(
                    image: 'assets/images/family_cards/grandmother.png',
                    label: 'Grandmother',
                    left: 13.0,
                    color: Color(0xFF847642),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  LearnCard(
                    image: 'assets/images/family_cards/grandfather.png',
                    label: 'Grandfather',
                    color: Color(0xFF494949),
                    left: 20.0,
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
