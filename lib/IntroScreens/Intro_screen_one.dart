import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sa/IntroScreens/Intro_Screen_two.dart';

class IntroScreenOne extends StatelessWidget {
  const IntroScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 2,
                ),
                child: SizedBox(
                  height: 450,
                  width: double.infinity,
                  child: Image.asset('lib/images/a.jpg'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Welcome to the next generation!',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.arimo(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF247BA0)),
                ),
              ),

               Text(
                'Generate 1000+ NFTs in seconds without code',
                 textAlign: TextAlign.center,
                 style: GoogleFonts.arimo(
                     fontSize: 14,
                     fontWeight: FontWeight.bold,
                     color: Color(0xFFFD7650)),
               ),


              const SizedBox(height: 24),

              // get started button
              Container(
                padding: EdgeInsets.only(right: 23, bottom: 15),
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () =>
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return IntroScreenTwo();
                          },
                        ),
                      ),
                  child: Container(
                    width: 120,
                    padding: const EdgeInsets.all(16),
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
