import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sa/Create%20Screen/Create_Screen.dart';
import 'package:sa/MainScreen/NFTScreens.dart';
import 'package:sa/MainScreen/about_us.dart';
import 'package:sa/MainScreen/open_wallet.dart';
import 'package:sa/MainScreen/profile_screen.dart';
import 'package:sa/signin.dart';
import 'package:sa/views/remove_bg_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Drawer/get_premium.dart';
import '../imageEdit/editScreen.dart';
import 'main2.dart';

final Uri _url = Uri.parse('https://foundation.app/@philipglass/BM-ICONS/1');
final Uri _url2 = Uri.parse('https://foundation.app/@Timpers/foundation/28521');
final Uri _url3 = Uri.parse('https://foundation.app/@GHARLIERA/genesis-74ef/1');
final Uri _url5 =
    Uri.parse('https://www.fotor.com/photo-editor-app/editor/sticker');

final Uri _url6 = Uri.parse('https://geekflare.com/nft-tracking-tools/');

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MyAppState();
}

Future<void> _launchUrl5() async {
  if (!await launchUrl(_url5)) {
    throw 'Could not launch $_url5';
  }
}

Future<void> _launchUrl6() async {
  if (!await launchUrl(_url6)) {
    throw 'Could not launch $_url6';
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

Future<void> _launchUrl2() async {
  if (!await launchUrl(_url2)) {
    throw 'Could not launch $_url2';
  }
}

Future<void> _launchUrl3() async {
  if (!await launchUrl(_url3)) {
    throw 'Could not launch $_url3';
  }
}

class _MyAppState extends State<MainScreen> {
  @override
  Uint8List? imageData;

  @override
  void initState() {
    super.initState();
    loadAsset("assets/nft2.jpg");
  }

  void loadAsset(String name) async {
    var data = await rootBundle.load('assets/$name');
    setState(() => imageData = data.buffer.asUint8List());
  }

  final List<Map> myProducts =
      List.generate(4, (index) => {"id": index, "name": "Product $index"})
          .toList();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // here the desired height
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
              onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return mainpage2();
                      },
                    ),
                  ),
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              )),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Card(
                  child: Image.asset(
                    'assets/Untitled-1.png',
                    fit: BoxFit.fitHeight,
                    height: 50,
                    width: height,
                  ),
                ),
              ),
              IconButton(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Drawer(
                              backgroundColor: Colors.white,
                              child: SafeArea(
                                  child: Column(
                                children: [
                                  ListTile(
                                    dense: true,
                                    title: Text("Tips"),
                                    leading: Icon(Icons.tips_and_updates),
                                    onTap: () {
                                      _launchUrl6();
                                    },
                                  ),
                                  ListTile(
                                    dense: true,
                                    title: Text("Get Premium"),
                                    leading: Icon(Icons.flash_on),
                                    onTap: () => Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return GetPremium();
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                            );
                          },
                        ),
                      ),
                  icon: Icon(
                    Icons.light_outlined,
                    color: Colors.black,
                  )),
            ],
          ),
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
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        "Start Creating",
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
                              onTap: () async {
                                var editedImage = await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ImageEditor(
                                      images: [
                                        imageData,
                                        imageData,
                                      ],
                                      allowMultiple: true,
                                      allowCamera: true,
                                      allowGallery: true,
                                    ),
                                  ),
                                );

                                // replace with edited image
                                if (editedImage != null) {
                                  imageData = editedImage;
                                  setState(() {});
                                }
                              },
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      var editedImage = await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ImageEditor(
                                            images: [
                                              imageData,
                                              imageData,
                                            ],
                                            allowMultiple: true,
                                            allowCamera: true,
                                            allowGallery: true,
                                          ),
                                        ),
                                      );

                                      // replace with edited image
                                      if (editedImage != null) {
                                        imageData = editedImage;
                                        setState(() {});
                                      }
                                    },
                                    child: Container(
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
                                      height: 195,
                                      width: 195,
                                      child: Image.asset("assets/sticker.jpg"),
                                    ),
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
                              onTap: () => {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return RemoveBackroundScreen();
                                    },
                                  ),
                                )
                              },
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Container(
                                    height: 195,
                                    width: 195,
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
                                    child: Image.asset(
                                        "assets/remove-background-sss.jpg"),
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
                              onTap: _launchUrl5,
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Container(
                                    height: 199,
                                    width: 199,
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
                                        "https://nftnewspro.com/wp-content/uploads/2022/02/Ethernal-Blue-NFT-Art.jpg"),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      "Add Background",
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
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Text(
                        "More",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
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
                                    height: 150,
                                    width: 150,
                                    child: Image.network(
                                      'http://www.asiaartcenter.org/asia/wp-content/uploads/2022/02/BAYC-6881.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.5),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
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
                            padding: const EdgeInsets.only(left: 5),
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
                                      height: 150,
                                      width: 150,
                                      child: Image.network(
                                        'https://s32659.pcdn.co/wp-content/uploads/2022/01/NFT-wallets.jpg.optimal.jpg',
                                        fit: BoxFit.fitHeight,
                                      )),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.5),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
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
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const AboutUs(),
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
                                    height: 150,
                                    width: 150,
                                    child:
                                        Image.asset("lib/images/about_us.gif"),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.5),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10))),
                                    width: 150,
                                    height: 30,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      "About Us",
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
                    SizedBox(
                      height: 265,
                      width: double.infinity,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SafeArea(
                              child: SizedBox(
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(top: 10, left: 10),
                                        child: Text(
                                          "Trending",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: GestureDetector(
                                                onTap: _launchUrl,
                                                child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: _launchUrl,
                                                      child: Container(
                                                        foregroundDecoration:
                                                            const BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              Colors.white,
                                                              Colors
                                                                  .transparent,
                                                            ],
                                                            begin: Alignment
                                                                .bottomCenter,
                                                            end: Alignment
                                                                .topCenter,
                                                            stops: [0, 0.5],
                                                          ),
                                                        ),
                                                        height: 195,
                                                        width: 195,
                                                        child: Image.network(
                                                            "https://nftnewspro.com/wp-content/uploads/2022/04/Einstein-on-the-Beach-NFT-Trend.jpg"),
                                                      ),
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(5),
                                                      child: Text(
                                                        "Einstein on the Beach",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: GestureDetector(
                                                onTap: _launchUrl2,
                                                child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  children: [
                                                    Container(
                                                      height: 195,
                                                      width: 195,
                                                      foregroundDecoration:
                                                          const BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            Colors.white,
                                                            Colors.transparent,
                                                          ],
                                                          begin: Alignment
                                                              .bottomCenter,
                                                          end: Alignment
                                                              .topCenter,
                                                          stops: [0, 0.5],
                                                        ),
                                                      ),
                                                      child: Image.network(
                                                          "https://nftnewspro.com/wp-content/uploads/2022/05/web-trending-NFT.jpg"),
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(5),
                                                      child: Text(
                                                        "WEB",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(5),
                                              child: GestureDetector(
                                                onTap: _launchUrl3,
                                                child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  children: [
                                                    Container(
                                                      height: 199,
                                                      width: 199,
                                                      foregroundDecoration:
                                                          const BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            Colors.white,
                                                            Colors.transparent,
                                                          ],
                                                          begin: Alignment
                                                              .bottomCenter,
                                                          end: Alignment
                                                              .topCenter,
                                                          stops: [0, 0.5],
                                                        ),
                                                      ),
                                                      child: Image.network(
                                                          "https://nftnewspro.com/wp-content/uploads/2022/03/GENE_SIS.jpg"),
                                                    ),
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(5),
                                                      child: Text(
                                                        "GENE_SIS",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 5),
                                              child: GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          const AboutUs(),
                                                    ),
                                                  );
                                                },
                                                child: Stack(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
            )))
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 23, 31, 42),
        onPressed: () => {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CreateScreen();
              },
            ),
          )
        },
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
              iconSize: 35,
              type: BottomNavigationBarType.fixed,
              currentIndex: 0,
              items: [
                BottomNavigationBarItem(
                    icon: IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return MainScreen();
                            },
                          ),
                        );
                      },
                      icon: Icon(Icons.home),
                      color: Color.fromARGB(255, 23, 31, 42),
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: IconButton(
                      onPressed: () {
                        if (loginStatus) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ProfileScreen(),
                            ),
                          );
                        } else {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LoginDemo(),
                            ),
                          );
                        }
                      },
                      icon: Icon(Icons.person),
                      color: Color.fromARGB(255, 23, 31, 42),
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
