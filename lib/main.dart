import 'package:flutter/material.dart';
import 'package:give_me_a_sign/screens/menu_page.dart';

void main() {
  runApp(GiveMeASign());
}

class GiveMeASign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Give Me a Sign',
      initialRoute: MenuPage.id,
      routes: {
        MenuPage.id: (context) => MenuPage(),
      },
    );
  }
}
