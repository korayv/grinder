import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sa/MainScreen/Main_screen.dart';

import '../MainScreen/Drawer_Screen.dart';

class RateUs extends StatelessWidget {
  const RateUs({super.key});

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
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20,
                ),
                child: SizedBox(
                  width: height,
                  child: Image.asset('lib/images/rate.gif'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Text(
                  'Your feedback on our app is very important to us, please do not forget to share your thoughts with us on Google Play and Apple Store! 👍\f Please rate us to support us..! 😊',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.arimo(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF247BA0)),
                ),
              ),

              const SizedBox(height: 10),

              // get started button
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 30, top: 50),
                child: GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return drawerScreen();
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
                      "Back",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        // fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
