import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sa/MainScreen/Main_screen.dart';

class PravicyPolicy extends StatelessWidget {
  const PravicyPolicy({super.key});

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
                  bottom: 0.2,
                ),
                child: SizedBox(
                  height: width,
                  width: double.infinity,
                  child: Image.asset('lib/images/privacy.jpg'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Privacy Policy of Grinder Company'
                  'Grinder Company operates the Grinder App , which provides the SERVICE.'
                  'This page is used to inform app visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service, the Grinder Data Service.'
                  'If you choose to use our Service, then you agree to the collection and use of information in relation with this policy. The Personal Information that we collect are used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy. '
                  'The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which is accessible at www.grinder.com.tr, unless otherwise defined in this Privacy Policy.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.arimo(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF247BA0)),
                ),
              ),

              Text(
                'Your data is safe with us, rest assured!',
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
                  onTap: () => Navigator.push(
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
