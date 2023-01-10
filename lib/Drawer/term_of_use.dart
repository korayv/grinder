import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sa/MainScreen/Main_screen.dart';

class TermOfUse extends StatelessWidget {
  const TermOfUse({super.key});

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
                  child: Image.asset('lib/images/term.jpg'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Term Of Use",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '      The Grinder app (www.grinder.com.tr) (the “App”) allows users the opportunity to purchase unique Ethereum blockchain-tracked, non-fungible tokens (NFTs) (“griNder") that serve as digital collectibles and are originally minted by TIME USA LLC (“TIME”, “we”, or “us”). These Terms of Use (“Terms”) are a legally binding agreement between you and TIME and set forth the terms for your use of the Site (however accessed, whether via web, mobile, or otherwise) and the limited services made available through the Site as described herein (the Site and services, collectively, the “Services”). \f \f'
                  '      ARBITRATION NOTICE AND CLASS ACTION WAIVER: EXCEPT FOR CERTAIN TYPES OF DISPUTES DESCRIBED IN SECTIONS 11 or 12 BELOW, YOU AGREE THAT DISPUTES BETWEEN YOU AND TIME WILL BE RESOLVED BY BINDING, INDIVIDUAL ARBITRATION AND YOU WAIVE YOUR RIGHT TO PARTICIPATE IN A CLASS ACTION LAWSUIT OR CLASS-WIDE ARBITRATION. \f \f'
                  '      BY USING THE SITE OR SERVICES, YOU AGREE TO BE BOUND BY THESE TERMS. IF YOU DO NOT AGREE WITH THESE TERMS, YOU MAY NOT USE THE SITE OR SERVICES. \f \f'
                  '      For clarity, these Terms do not govern your use of Grinder’s and its affiliates’ other websites (e.g., Grinder.com) and associated mobile applications, nor any other product or service purchased from a Grinder website or application besides the Grinder.',
                  style:
                      GoogleFonts.arimo(fontSize: 15, color: Color(0xFF247BA0)),
                ),
              ),

              Text(
                'Our terms of use are for your benefit..!',
                textAlign: TextAlign.center,
                style: GoogleFonts.arimo(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFD7650)),
              ),

              const SizedBox(height: 5),

              // get started button
              Container(
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.only(right: 30, top: 90),
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
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
