import 'package:flutter/material.dart';

class NFTScreen extends StatefulWidget {
  const NFTScreen({Key? key}) : super(key: key);

  @override
  State<NFTScreen> createState() => _NFTScreenState();
}

class _NFTScreenState extends State<NFTScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              "https://listelist.com/wp-content/uploads/2022/10/nft.jpg",
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "What is NFT?",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "NFT stands for non-fungible token. It is a type of digital asset that represents ownership of a unique item or asset. Non-fungible means that the asset is not interchangeable and has a unique value. This is in contrast to a fungible asset, which is interchangeable and has a value that is determined by the market. NFTs are created using blockchain technology and are stored on a decentralized ledger. This allows for the ownership of the asset to be easily verifiable and transferable. NFTs are often used to represent digital art, collectibles, and other unique items that can be bought and sold online. They have gained popularity in recent years due to the increasing demand for unique, digital assets and the ability to easily buy and sell them using blockchain technology.",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("OK, Great!"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
