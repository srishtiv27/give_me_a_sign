import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:give_me_a_sign/constants/assets.dart';

class NumbersPage extends StatelessWidget {
  static String id = 'numbers_page';
  List<String> numbers = [
    k1,
    k2,
    k3,
    k4,
    k5,
    k6,
    k7,
    k8,
    k9,
    k10,
    k11,
    k12,
    k13,
    k14,
    k15,
    k16,
    k17,
    k18,
    k19,
    k20,
    k50,
    k100
  ];
  List<int> buildIndex() {
    List<int> indices = [];
    for (int i = 0; i < numbers.length; i++) {
      indices.add(i);
    }
    return indices;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272727),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 70, right: 20.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Numbers',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE4E3DF),
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 400,
                viewportFraction: 0.8,
                enlargeCenterPage: true,
//                autoPlay: true,
//                autoPlayInterval: Duration(
//                  seconds: 3,
//                ),
              ),
              items: buildIndex().map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            numbers[i],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
