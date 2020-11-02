import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:give_me_a_sign/constants/assets.dart';

class MonthsPage extends StatelessWidget {
  static String id = 'months_page';
  List<String> months = [
    kJanuary,
    kFebruary,
    kMarch,
    kApril,
    kMay,
    kJune,
    kJuly,
    kAugust,
    kSeptember,
    kOctober,
    kNovember,
    kDecember,
  ];

  List<int> buildIndex() {
    List<int> indices = [];
    for (int i = 0; i < months.length; i++) {
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
                'Months',
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
                autoPlayInterval: Duration(
                  seconds: 3,
                ),
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
                            months[i],
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
