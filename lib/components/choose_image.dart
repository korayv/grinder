
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Widget bottomSheet(controller, context) {
  return Container(
    height: 100.0,
    width: double.infinity,
    margin: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 20,
    ),
    child: Column(
      children: <Widget>[
        const Text(
          "Choose an image",
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: InkWell(
                  splashColor: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                  onTap: () {
                    controller.pickImage(ImageSource.camera);
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.camera,color: Colors.brown,size: 30),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Camera",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 90,
              ),
              InkWell(
                splashColor: Colors.amber,
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  controller.pickImage(ImageSource.gallery);
                  Navigator.pop(context);
                },
                child: Row(
                  children: const [
                    Icon(Icons.image,color: Colors.brown,size: 30),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Gallery",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                  ],
                ),
              ),
            ])
      ],
    ),
  );
}
