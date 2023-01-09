// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sa/MainScreen/Main_screen.dart';
import 'package:screenshot/screenshot.dart';
import '../components/choose_image.dart';
import '../components/snackbar.dart';
import '../controllers/remove_bg_controller.dart';

class RemoveBackroundScreen extends StatelessWidget {
  const RemoveBackroundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
          backgroundColor: Colors.brown[400],
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                ),
                onPressed: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MainScreen();
                    },
                  ),
                ),
              )
            ],
            backgroundColor: Colors.brown[900],
            elevation: 0,
            title: const Text('Remove Background',
                style: TextStyle(color: Colors.white)),
          ),
          body: Center(
            child: GetBuilder<RemoveBgController>(
                init: RemoveBgController(),
                builder: (controller) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      (controller.imageFile != null)
                          ? SafeArea(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16),
                                child: Screenshot(
                                  controller: controller.controller,
                                  child: Image.memory(
                                    height: 300,
                                    controller.imageFile!,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
                              controller.isLoading.value
                                  ? const Center(
                                child: CircularProgressIndicator(),
                              )
                                  : ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(30),
                                    side: BorderSide(
                                        width: 10.0,
                                        color: Colors.brown),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Text(
                                    "Remove Background",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                  ),
                                  onPressed: () async {
                                    if (controller.imageFile ==
                                        null) {
                                      showSnackBar(
                                          "Error",
                                          "Please select an image",
                                          true);
                                    } else {
                                      controller.imageFile =
                                      await RemoveBgController()
                                          .removeBg(controller
                                          .imagePath!);
                                      print("Success");
                                    }
                                    controller.update();
                                  }),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.fromLTRB(
                                        70, 30, 70, 30),
                                    side: BorderSide(
                                        width: 10.0, color: Colors.brown),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Text(
                                    "Save Image",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                  ),
                                  onPressed: () async {
                                    if (controller.imageFile != null) {
                                      controller.saveImage();

                                      showSnackBar(
                                          "Success",
                                          "Image saved successfully",
                                          false);
                                    } else {
                                      showSnackBar("Error",
                                          "Please select an image", true);
                                    }
                                  }),
                              const SizedBox(height: 20),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.fromLTRB(
                                        50, 30, 50, 30),
                                    side: BorderSide(
                                        width: 10.0, color: Colors.brown),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: Text(
                                    "Add New Image",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                  ),
                                  onPressed: () async {
                                    controller.cleanUp();
                                  }),
                            ],
                          ),
                        ),
                      )
                          : SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                Icons.image,
                                size: 100,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 40),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  padding:
                                  EdgeInsets.fromLTRB(50, 30, 50, 30),
                                  side: BorderSide(
                                      width: 10.0, color: Colors.brown),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(20),
                                  ),
                                ),
                                child: Text(
                                  "Select Image",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black87),
                                ),
                                onPressed: () async {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return bottomSheet(
                                            controller, context);
                                      });
                                }),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          )),
    );
  }
}
