import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Intro_Screen_three.dart';
import 'Intro_screen_one.dart';

class IntroScreenTwo extends StatelessWidget {
  const IntroScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // big logo
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: SizedBox(
                  height: width,
                  width: double.infinity,
                  child: Image.asset('lib/images/b.jpg', fit: BoxFit.fill),
                ),
              ),

              // we deliver groceries at your doorstep
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Make NFTs from everyday snap you take!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.arimo(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF247BA0)),
                ),
              ),

              // groceree gives you fresh vegetables and fruits
              Text(
                'Fashion of you will fascinate collectors.',
                textAlign: TextAlign.center,
                style: GoogleFonts.arimo(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFD7650)),
              ),

              const SizedBox(height: 24),

              // get started button
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 30, top: 120),
                child: GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return IntroScreenThree();
                      },
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 120,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent, width: 1),
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 248, 245, 245),
                    ),
                    child: const Text(
                      textAlign: TextAlign.center,
                      "Next",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        // fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
