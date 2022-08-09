import 'package:course/card_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'card_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List courses = [
      // [companyName, jobTitle , logoPath, hourlyRate]
      ['SWIFT', 'assets/swift.png'],
      ['HTML', 'assets/css.png'],
      ['CSS', 'assets/css.png'],
      ['PYTHON', 'assets/python.png'],
    ];

    var colors = [
      Color(0xffFF5722),
      Color(0xff580BFC),
      Color(0xff580BFC),
      Color(0xff4895FF),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: 30,
                    child: Image.asset('assets/menu.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 40,
                      child: Image.asset('assets/profile.png'),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                "👋 Hey let's Code",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 4),
              child: Text(
                "Together!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                      alignment: Alignment.topRight,
                      child: const Text(
                        'Course',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text('View all'),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              height: 180,
              // color: Colors.red,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: courses.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardPage(
                    cardText: courses[index][0],
                    // cardColor: courses[index][1],
                    logoPath: courses[index][1],
                    color: colors[index],
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                      alignment: Alignment.topRight,
                      child: const Text(
                        'Popular course',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Text('View all'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (BuildContext context, int index) {
                    return CardView();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
