import 'package:flutter/material.dart';
import 'package:give_me_a_sign/screens/alphabets_quiz.dart';

class OptionButton extends StatelessWidget {
  final String label;
  final Color color;
  final Function onPressed;
  final double height;
  final double width;
  final double fontSize;
  OptionButton({
    this.label,
    this.color,
    this.onPressed,
    this.height = 75,
    this.width = 300,
    this.fontSize = 50,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: fontSize,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
