import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sa/Create%20Screen/Create_Screen.dart';
import 'package:sa/Drawer/privacy_policy.dart';
import 'package:sa/Drawer/rate_us.dart';
import 'package:sa/Drawer/term_of_use.dart';
import 'package:sa/MainScreen/NFTScreens.dart';
import 'package:sa/MainScreen/about_us.dart';
import 'package:sa/MainScreen/open_wallet.dart';
import 'package:sa/MainScreen/profile_screen.dart';
import 'package:sa/views/remove_bg_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Drawer/Follow_us.dart';
import '../imageEdit/editScreen.dart';

final Uri _url = Uri.parse('https://foundation.app/@philipglass/BM-ICONS/1');
final Uri _url2 = Uri.parse('https://foundation.app/@Timpers/foundation/28521');
final Uri _url3 = Uri.parse('https://foundation.app/@GHARLIERA/genesis-74ef/1');
final Uri _url5 =
    Uri.parse('https://www.fotor.com/photo-editor-app/editor/sticker');

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
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Drawer(
                              child: SafeArea(
                                  child: Column(
                                children: [
                                  ListTile(
                                    dense: true,
                                    title: Text("Rate Us"),
                                    leading: Icon(Icons.star_border_outlined),
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => RateUs(),
                                        ),
                                      );
                                    },
                                  ),
                                  ListTile(
                                    dense: true,
                                    title: Text("Privacy Policy"),
                                    leading: Icon(Icons.privacy_tip_outlined),
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => PravicyPolicy(),
                                        ),
                                      );
                                    },
                                  ),
                                  ListTile(
                                    dense: true,
                                    title: Text("Terms of Use"),
                                    leading: Icon(Icons.article_outlined),
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => TermOfUse(),
                                        ),
                                      );
                                    },
                                  ),
                                  ListTile(
                                    dense: true,
                                    title: Text("Follow Us"),
                                    leading: Icon(Icons.thumb_up_alt_outlined),
                                    onTap: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return ContactUs(
                                              cardColor: Colors.white,
                                              companyColor: Colors.lime,
                                              companyName: 'GriNder',
                                              email: 'grinder@gmail.com',
                                              taglineColor: Colors.lime,
                                              textColor: Colors.lime,
                                              logo: AssetImage(
                                                  'lib/images/download.jpg'),
                                              website: 'griNder.com',
                                              avatarRadius: 100,
                                              companyFontWeight:
                                                  FontWeight.bold,
                                              instagram: 'griNder',
                                              facebookHandle: 'grinder',
                                              linkedinURL: 'grinder',
                                              phoneNumber: '0555 555 55 55',
                                              dividerColor: Colors.brown,
                                              companyFontSize: 50,
                                              twitterHandle: 'GriNder',
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                  ListTile(
                                    dense: true,
                                    title: Text("Go Back"),
                                    leading:
                                        Icon(Icons.arrow_back_ios_outlined),
                                    onTap: () => Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return MainScreen();
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
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.black,
                  )),
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
                  onPressed: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Drawer(
                              child: SafeArea(
                                  child: Column(
                                children: [
                                  ListTile(
                                    dense: true,
                                    title: Text("Home Page"),
                                    leading: Icon(Icons.home),
                                    onTap: () {
                                      //action when this menu is pressed
                                    },
                                  ),
                                  ListTile(
                                    dense: true,
                                    title: Text("My Profile"),
                                    leading: Icon(Icons.person),
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ProfileScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                  ListTile(
                                    dense: true,
                                    title: Text("Get Premium"),
                                    leading: Icon(Icons.workspace_premium),
                                    onTap: () {
                                      //action when this menu is pressed
                                    },
                                  ),
                                  ListTile(
                                    dense: true,
                                    title: Text("Go Back"),
                                    leading:
                                        Icon(Icons.arrow_back_ios_outlined),
                                    onTap: () => Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return MainScreen();
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
                    Icons.workspace_premium_outlined,
                    color: Colors.black,
                  ))
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
                              onTap: () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return RemoveBackroundScreen();
                                  },
                                ),
                              ),
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
                                      "https://www.cnet.com/a/img/resize/e547a2e4388fcc5ab560f821ac170a59b9fb0143/hub/2021/12/13/d319cda7-1ddd-4855-ac55-9dcd9ce0f6eb/unnamed.png?auto=webp&fit=crop&height=1200&width=1200",
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
                                        "https://img.freepik.com/free-vector/digital-wallet-abstract-concept-illustration_335657-3896.jpg?w=2000"),
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
                                    child: Image.asset("assets/aboutus.jpg"),
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
        onPressed: () => Navigator.pushReplacement(
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
              onTap: (value) => ProfileScreen(),
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

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String imageUrl;

  Product({
    required this.id,
    required this.title,
    required this.imageUrl,
  });
}

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Red Shirt',
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Trousers',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Yellow Scarf',
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      title: 'A Pan',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    ),
  ];
}
