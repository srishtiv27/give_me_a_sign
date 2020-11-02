import 'package:flutter/material.dart';

class LearnCard extends StatelessWidget {
  final String image;
  final String label;
  final double left;
  final Color color;
  LearnCard(
      {this.image, this.label, this.left = 28.0, this.color = Colors.black});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          child: Image.asset(
            image,
            height: 172.0,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 10.0,
          left: left,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lobster',
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
