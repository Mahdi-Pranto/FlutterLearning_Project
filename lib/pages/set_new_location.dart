import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:image_picker/image_picker.dart';
import 'image_upload.dart';

class SetNewLocation extends StatefulWidget {
  const SetNewLocation({super.key});

  @override
  State<SetNewLocation> createState() => _SetNewLocationState();
}

class _SetNewLocationState extends State<SetNewLocation> {
  String locationName = "Set Location";
  var isDone = false;

  final TextEditingController myController = TextEditingController();

//image upload variables
  XFile? image;
  final ImagePicker picker = ImagePicker();

  //we can upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);
    setState(() {
      image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.grey.shade200,
          child: Column(
            children: <Widget>[
              Visibility(
                visible: isDone,
                child: Column(
                  children: [
                    image != null
                        ? Image.file(
                            //to show image, you type like this.
                            File(
                              image!.path,
                            ),

                            fit: BoxFit.cover,
                            width: 150,
                            height: 150,
                          )
                        : const Text(
                            "No Image",
                            style: TextStyle(fontSize: 20),
                          ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('${locationName}'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        const Center(
            child: Text(
          "Set Location",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        Container(
          padding: EdgeInsets.all(20),
          child: TextFormField(
            controller: myController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name of the Location",
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding: EdgeInsets.all(16.0)),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
        ),
        TextButton(
            onPressed: () {
              myAlert();
              isDone
                  ? setState(() => isDone = false)
                  : setState(
                      () => isDone = true,
                    );
            },
            child: Text(
              "Add Photo",
              style: TextStyle(decoration: TextDecoration.underline),
            )),
        ElevatedButton(
            onPressed: () {
              isDone
                  ? setState(() => isDone = false)
                  : setState(
                      () => isDone = true,
                    );

              locationName = myController.text;
            },
            child: Text("Done"))
      ],
    );
  }

////show popup dialog for upload image
  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Please choose media to select'),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
