import 'package:flutter/material.dart';
import 'package:give_me_a_sign/screens/learn_menu.dart';
import 'package:give_me_a_sign/screens/menu_page.dart';

void main() {
  runApp(GiveMeASign());
}

class GiveMeASign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Give Me a Sign',
      initialRoute: LearnMenu.id,
      routes: {
        MenuPage.id: (context) => MenuPage(),
        LearnMenu.id: (context) => LearnMenu(),
      },
    );
  }
}
