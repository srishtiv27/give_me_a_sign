import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AlphabetsPage extends StatelessWidget {
  static String id = 'alphabets_page';
  List<String> background = [
    'assets/images/alphabets/A.png',
  ];
  List<int> buildIndex() {
    List<int> indices = [];
    for (int i = 0; i < background.length; i++) {
      indices.add(i);
    }
    return indices;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272727),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 50, right: 20.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Alphabets',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE4E3DF),
                ),
              ),
            ),
            SizedBox(
              height: 80.0,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 450,
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
                            background[i],
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
