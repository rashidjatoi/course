import 'package:course/home_page.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatelessWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(12),
              child: Image.asset(
                'assets/home.png',
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Learn your favourite',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Programming Language',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "I got two and I can't decide which I line",
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(height: 5),
            Text(
              'better at the moment. Those two languages',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(height: 5),
            Text(
              ' are Julia and OCami',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(
              height: 130,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      alignment: Alignment.topLeft,
                      height: 55,
                      width: 180,
                      color: Colors.black,
                      child: const Center(
                        child: Text(
                          'Get Started',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: const Text(
                        'SKIP',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
