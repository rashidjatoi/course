import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  // final color;
  // final logoPath;
  // final cardText;

  // const CardView(
  //     {super.key,
  //     required this.logoPath,
  //     required this.color,
  //     required this.cardText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        // width: 150,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Color(0xffE8E8EF),
                  child: Center(
                    child: Image.asset(
                      'assets/python.png',
                      height: 60,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(height: 10),
                  Text(
                    'Python',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Class List 200',
                    style: TextStyle(letterSpacing: 1.5),
                  ),
                  SizedBox(height: 10),
                  Center(child: Text('⭐ 4.5'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
