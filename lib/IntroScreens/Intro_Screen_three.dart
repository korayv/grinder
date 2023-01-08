import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sa/MainScreen/Main_screen.dart';

class IntroScreenThree extends StatelessWidget {
  const IntroScreenThree({super.key});

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
              // big logo
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 2,
                ),
                child: Container(
                  height: 450,
                  width: double.infinity,
                  child: Image.asset('lib/images/c.jpg'),
                ),
              ),

              // we deliver groceries at your doorstep
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Share your NFTs with stickers on social media.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSerif(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent),
                ),
              ),

              // groceree gives you fresh vegetables and fruits
              Text(
                'Enjoy and discover the possibility of metaverse.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.deepOrange,
                ),
              ),

              const SizedBox(height: 24),

              // get started button
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 23, bottom: 15),
                child: GestureDetector(
                  onTap: () =>
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return MainScreen();
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
