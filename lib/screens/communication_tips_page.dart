import 'package:flutter/material.dart';
import 'package:give_me_a_sign/constants/strings.dart';

class CommunicationTipsPage extends StatelessWidget {
  static String id = 'communication_tips_page';
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
                  'Communication Tips',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFE4E3DF),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/resources/communication_page.png',
                height: 300,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                kCommunicationTips,
                style: TextStyle(
                  color: Color(0xFFE4E3DF),
                  fontSize: 19,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
