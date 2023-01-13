import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sa/MainScreen/Main_screen.dart';
import 'package:stacked_firebase_auth/stacked_firebase_auth.dart';
import 'main.dart';
import 'signin.dart';
import 'package:sa/MainScreen/profile_screen.dart';

class SigninDemo extends StatefulWidget {
  @override
  _SigninDemoState createState() => _SigninDemoState();
}

bool valid = false;

class _SigninDemoState extends State<SigninDemo> {
  static Future<User?> loginusingemailpassword(@required String email,
      @required String password, @required BuildContext context) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        print("No user found");
        valid = false;
      }
    }
    return user;
  }

  final firebaseAuthenticationService = FirebaseAuthenticationService();

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text("Main Page"),
      onPressed: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return MainScreen();
          },
        ),
      ),
    );
    Widget continueButton = TextButton(
      child: Text("Profile"),
      onPressed: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return ProfileScreen();
          },
        ),
      ),
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      //title: Text("AlertDialog"),
      content: Text("signed up successfully"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  showAlertDialog2(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("Try Again"),
      onPressed: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => SigninDemo()));
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      //title: Text("My title"),
      content: Text("failed"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passController = TextEditingController();
    TextEditingController _nameController = TextEditingController();
    TextEditingController _ageController = TextEditingController();
    TextEditingController _IDController = TextEditingController();
    TextEditingController _jobController = TextEditingController();

    Future _createEmailAccount() async {
      final result = await FirebaseAuthenticationService()
          .createAccountWithEmail(
              email: _emailController.text, password: _passController.text);
      print('Result: ${result.user}');
      if (result.user != null) {
        valid = true;
      }
    }

    // No longer throws
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        centerTitle: true,
        title: Text("Sign Up"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/logo.png')),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: _passController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                onPressed: () {
                  _createEmailAccount();
                  if (valid) {
                    loginStatus = true;
                    print("done");
                    showAlertDialog(context);
                  } else {
                    showAlertDialog2(context);
                  }
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
