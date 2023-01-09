import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sa/MainScreen/Main_screen.dart';

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
                  bottom: 2,
                ),
                child: SizedBox(
                  height: width,
                  width: double.infinity,
                  child: Image.asset('lib/images/rate_us.jpeg'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  'Your feedback on our app is very important to us, please do not forget to share your thoughts with us on Google Play and Apple Store! Please rate us to support us.',
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

              const SizedBox(height: 30),

              // get started button
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 30, top: 120),
                child: GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MainScreen();
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
            ],
          ),
        ),
      ),
    );
  }
}
