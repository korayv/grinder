import 'package:flutter/material.dart';

class OpenWalletScreen extends StatefulWidget {
  const OpenWalletScreen({Key? key}) : super(key: key);

  @override
  State<OpenWalletScreen> createState() => _OpenWalletScreenState();
}

class _OpenWalletScreenState extends State<OpenWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                "https://www.finahukuk.com/en/wp-content/uploads/2022/01/digital-wallet.jpg",
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Open A Wallet",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "A wallet in the context of blockchain technology refers to a digital or software application that is used to store, manage, and track the ownership of digital assets or cryptocurrencies. It is essentially a digital equivalent of a traditional physical wallet, but instead of storing physical currency, it stores digital currency, such as Bitcoin or Ethereum. Blockchain wallets are used to send and receive cryptocurrencies, as well as to view and manage one's balance. They typically have a unique address, which is a string of alphanumeric characters that is used to identify the wallet and to send and receive transactions. The address is similar to a bank account number or an email address, and it is used to send and receive payments.",
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
