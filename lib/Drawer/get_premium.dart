import 'package:flutter/material.dart';

class GetPremium extends StatefulWidget {
  const GetPremium({Key? key}) : super(key: key);

  @override
  State<GetPremium> createState() => _GetPremiumState();
}

class _GetPremiumState extends State<GetPremium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('lib/images/nftpremium.gif'),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Get Premium",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "This feature will be added very soon.🥳 \f \fNew Features can also be included and will be only 3€ per month, while the annual subscription will be only 30€. 🤩😃 ",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("OK, Great!"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
