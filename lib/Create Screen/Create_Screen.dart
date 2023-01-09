import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sa/MainScreen/Main_screen.dart';
import 'package:sa/views/remove_bg_screen.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          title: Row(
            children: [
              Image.asset('assets/Untitled-1.png', height: 50,fit: BoxFit.contain,)
            ],
          ),
        ),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MainScreen();
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
                        color: Colors.blueGrey,
                      ),
                      label: 'Home'
                  ),

                  BottomNavigationBarItem(
                      icon: IconButton(
                        onPressed: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                              const ProfileScreen(),
                            ),
                          );
                        },
                        icon: Icon(Icons.person),
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
            SafeArea(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      width: 360,
                        child: Image.asset('assets/sticker.jpg')
                    ),
                  ),
                ],
              ),
            ),
            GridView(
                padding: EdgeInsets.only(top: 475, left: 30, right: 30),
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
                          icon: const Icon(Icons.sticky_note_2),
                          onPressed: () {},
                        ),
                        Text(
                          "Add Sticker",
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
                ]),
          ],
        ));
  }
}
