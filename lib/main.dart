import 'package:flutter/material.dart';
import 'package:give_me_a_sign/screens/alphabets_page.dart';
import 'package:give_me_a_sign/screens/alphabets_quiz.dart';
import 'package:give_me_a_sign/screens/animals_menu.dart';
import 'package:give_me_a_sign/screens/challenge_quiz.dart';
import 'package:give_me_a_sign/screens/colours_menu.dart';
import 'package:give_me_a_sign/screens/communication_tips_page.dart';
import 'package:give_me_a_sign/screens/days_and_months_menu.dart';
import 'package:give_me_a_sign/screens/days_page.dart';
import 'package:give_me_a_sign/screens/emotions_menu.dart';
import 'package:give_me_a_sign/screens/etiquettes_page.dart';
import 'package:give_me_a_sign/screens/family_menu.dart';
import 'package:give_me_a_sign/screens/food_menu.dart';
import 'package:give_me_a_sign/screens/greetings_menu.dart';
import 'package:give_me_a_sign/screens/greetings_quiz.dart';
import 'package:give_me_a_sign/screens/learn_menu.dart';
import 'package:give_me_a_sign/screens/menu_page.dart';
import 'package:give_me_a_sign/screens/numbers_page.dart';
import 'package:give_me_a_sign/screens/months_page.dart';
import 'package:give_me_a_sign/screens/quizzes_menu.dart';
import 'package:give_me_a_sign/screens/resources_menu.dart';
import 'package:give_me_a_sign/screens/greetings_quiz.dart';

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
        LearnMenu.id: (context) => LearnMenu(),
        AlphabetsPage.id: (context) => AlphabetsPage(),
        NumbersPage.id: (context) => NumbersPage(),
        MonthsPage.id: (context) => MonthsPage(),
        DaysPage.id: (context) => DaysPage(),
        DaysAndMonthsMenu.id: (context) => DaysAndMonthsMenu(),
        ColoursMenu.id: (context) => ColoursMenu(),
        FamilyMenu.id: (context) => FamilyMenu(),
        FoodMenu.id: (context) => FoodMenu(),
        AnimalsMenu.id: (context) => AnimalsMenu(),
        EmotionsMenu.id: (context) => EmotionsMenu(),
        GreetingsMenu.id: (context) => GreetingsMenu(),
        ResourcesMenu.id: (context) => ResourcesMenu(),
        EtiquettesPage.id: (context) => EtiquettesPage(),
        CommunicationTipsPage.id: (context) => CommunicationTipsPage(),
        QuizzesMenu.id: (context) => QuizzesMenu(),
        AlphabetsQuiz.id: (context) => AlphabetsQuiz(),
        ChallengeQuiz.id: (context) => ChallengeQuiz(),
        GreetingsQuiz.id: (context) => GreetingsQuiz(),
      },
    );
  }
}
