import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final color;
  final logoPath;
  final cardText;

  const CardPage(
      {super.key,
      required this.logoPath,
      required this.color,
      required this.cardText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 150,
          padding: EdgeInsets.all(12),
          color: color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Image.asset(
                  logoPath,
                  height: 80,
                ),
              ),
              // const SizedBox(height: 10),
              Text(cardText,
                  style: const TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              const Text(
                '160 Class',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Color(0xffFF5722)