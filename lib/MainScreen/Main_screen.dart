import 'package:flutter/material.dart';
import 'package:sa/Create%20Screen/Create_Screen.dart';
import 'package:sa/Design/app-colors.dart';
import 'package:sa/Design/app-theme-data.dart';
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MyAppState();
}

class _MyAppState extends State<MainScreen> {
  final List<Map> myProducts =
  List.generate(4, (index) => {"id": index, "name": "Product $index"})
      .toList();

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Grinder",
          style: TextStyle(color: Colors.black),
        ),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SafeArea(
              child: SizedBox(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Your Creativy",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: GestureDetector(
                                onTap: () {
                                  print("sticker");
                                },
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Container(
                                      foregroundDecoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.white,
                                            Colors.transparent,
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                          stops: [0, 0.5],
                                        ),
                                      ),
                                      height: 100,
                                      width: 200,
                                      child: Image.network(
                                          "https://alumni.arizona.edu/sites/default/files/styles/az_large/public/2022-07/is_your_idea_innovative.jpeg"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "Sticker",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: GestureDetector(
                                onTap: () {
                                  print("background remove");
                                },
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 200,
                                      foregroundDecoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.white,
                                            Colors.transparent,
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                          stops: [0, 0.5],
                                        ),
                                      ),
                                      child: Image.network(
                                          "https://alumni.arizona.edu/sites/default/files/styles/az_large/public/2022-07/is_your_idea_innovative.jpeg"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "Background Remove",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: GestureDetector(
                                onTap: () {
                                  print("another box");
                                },
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 200,
                                      foregroundDecoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.white,
                                            Colors.transparent,
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                          stops: [0, 0.5],
                                        ),
                                      ),
                                      child: Image.network(
                                          "https://alumni.arizona.edu/sites/default/files/styles/az_large/public/2022-07/is_your_idea_innovative.jpeg"),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        "Another box",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Learn from GriNder Academy",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => const NFTScreen(),
                                    ),
                                  );
                                },
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Container(
                                      foregroundDecoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            colors: [
                                              Colors.white,
                                              Colors.transparent,
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: [0, 0.5],
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      height: 100,
                                      width: 150,
                                      child: Image.network(
                                          "https://www.womansworld.com/wp-content/uploads/2019/09/cute-bunny-in-a-field-of-grass-and-white-flowers.jpg"),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight:
                                              Radius.circular(10))),
                                      width: 150,
                                      height: 30,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "What is NFT?",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                      const OpenWalletScreen(),
                                    ),
                                  );
                                },
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Container(
                                      foregroundDecoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                            colors: [
                                              Colors.white,
                                              Colors.transparent,
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: [0, 0.5],
                                          ),
                                          borderRadius:
                                          BorderRadius.circular(10)),
                                      height: 100,
                                      width: 150,
                                      child: Image.network(
                                          "https://www.womansworld.com/wp-content/uploads/2019/09/cute-bunny-in-a-field-of-grass-and-white-flowers.jpg"),
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight:
                                              Radius.circular(10))),
                                      width: 150,
                                      height: 30,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        "Open a wallet",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "Trend Collections",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 300,
                        width: double.infinity,
                        child: GridView.builder(
                            physics: const BouncingScrollPhysics(),
                            gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 3 / 2,
                                crossAxisSpacing: 6,
                                mainAxisSpacing: 10),
                            itemCount: myProducts.length,
                            itemBuilder: (BuildContext ctx, index) {
                              return Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text(myProducts[index]["name"]),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return CreateScreen();
                },
              ),
            ),
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        notchMargin: 5,
        shape: CircularNotchedRectangle(),
        child: Wrap(
          children: [
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: 0,
              onTap: (int index) {},
              items: [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      color: Colors.blueGrey,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                      color: Colors.blueGrey,
                    ),
                    label: 'Profile'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OpenWalletScreen extends StatefulWidget {
  const OpenWalletScreen({Key? key}) : super(key: key);

  @override
  State<OpenWalletScreen> createState() => _OpenWalletScreenState();
}

class _OpenWalletScreenState extends State<OpenWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
    );
  }
}

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
