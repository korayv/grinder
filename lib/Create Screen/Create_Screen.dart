import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sa/views/remove_bg_screen.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Icon(Icons.close_rounded),
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
        body: Stack(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    "Start creating",
                    style: GoogleFonts.arimo(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            GridView(
                padding: EdgeInsets.only(top: 80, left: 30, right: 30),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 230,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                ),
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(166, 191, 197, 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.camera),
                          onPressed: () {},
                        ),
                        Text(
                          "Open Camera",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(166, 191, 197, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.photo_library),
                            onPressed: () =>
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return RemoveBackroundScreen();
                                    },
                                  ),
                                ),
                          ),
                          Text(
                            "Open Directory",
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(166, 191, 197, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.bolt),
                            onPressed: () {},
                          ),
                          Text(
                            "Open Directory",
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                  Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(166, 191, 197, 1),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.bolt),
                            onPressed: () {},
                          ),
                          Text(
                            "Open Directory",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ))
                ]),
          ],
        ));
  }
}
