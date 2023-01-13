
import 'package:flutter/material.dart';
import 'package:sa/MainScreen/Main_screen.dart';
import 'package:sa/MainScreen/profile_screen.dart';
import 'package:sa/views/remove_bg_screen.dart';
import 'package:sa/signin.dart';
import 'package:sa/signup.dart';

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
            backgroundColor: Colors.white,
            elevation: 0,
            title: Center(
              child: Image.asset(
                'assets/Untitled-1.png',
                height: 50,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(
            context,
            MaterialPageRoute(
              builder: (context) {
                return MainScreen();
              },
            ),
          ),
          backgroundColor: Color.fromARGB(255, 23, 31, 42),
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
                                builder: (context) => SigninDemo(),
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
        body: Stack(
          children: [
            SafeArea(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                        width: 360, child: Image.asset('assets/sticker.jpg')),
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
                            onPressed: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return RemoveBackroundScreen();
                                },
                              ),
                            ),
                          ),
                          Text(
                            "Remove Background",
                            textAlign: TextAlign.center,
                          )
                        ],
                      )),
                ]),
          ],
        ));
  }
}
