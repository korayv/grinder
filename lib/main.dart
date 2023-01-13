import 'package:flutter/material.dart';
import 'IntroScreens/Intro_screen_one.dart';
import 'controllers/remove_bg_controller.dart';
import 'themes.dart';
//import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

bool skip = false;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      child: Builder(
        builder: (context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeProvider.themeOf(context).data,
          title: 'home',
          home: IntroScreenOne(),
        ),
      ),
    );
  }
}
