import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstapp/models/hotel_model.dart';
import 'package:myfirstapp/pages/set_new_location.dart';
import 'package:myfirstapp/utilities/routes.dart';

import '../data.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});
  static const place_name = "COX'S BAZAR";

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  bool isFirstImage = false;
  bool isSecondImage = false;
  bool isThirdImage = false;
  bool isForthImage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Stack(children: [
              Image.asset("assets/images/coxsbazar.jpg", fit: BoxFit.contain),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5),
                alignment: Alignment.center,
                height: 90,
                child: Column(
                  children: [
                    Text(
                      "WELCOME TO ${CardPage.place_name}",
                      style: TextStyle(
                        fontFamily: GoogleFonts.dancingScript().fontFamily,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
            SizedBox(
              height: 40,
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Center(
              child: Text("Best Places",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: GoogleFonts.lato().fontFamily,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 5,
                  )),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: Colors.grey.shade200,
                  child: Column(
                    children: <Widget>[
                      Visibility(
                        visible: isFirstImage,
                        child: Column(
                          children: [
                            Image.network(
                              'https://live.staticflickr.com/7003/6611298277_9689726a7f_b.jpg',
                              fit: BoxFit.cover,
                              height: 150,
                              width: 150,
                            ),
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text('Kolatoli Beach'),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            isFirstImage
                                ? setState(() => isFirstImage = false)
                                : setState(
                                    () => isFirstImage = true,
                                  );
                          },
                          child: Text("See Place")),
                    ],
                  ),
                ),
                SizedBox(
                  child: Container(
                    width: 40,
                  ),
                ),
                Card(
                  color: Colors.grey.shade200,
                  child: Column(
                    children: <Widget>[
                      Visibility(
                        visible: isSecondImage,
                        child: Column(
                          children: [
                            Image.network(
                              'https://www.touristplaces.com.bd/images/pp/5/p114771.jpg',
                              fit: BoxFit.cover,
                              height: 150,
                              width: 150,
                            ),
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text('Shugondha Beach'),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            isSecondImage
                                ? setState(() => isSecondImage = false)
                                : setState(() => isSecondImage = true);
                          },
                          child: Text("See Place")),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              child: Container(
                height: 40,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: Colors.grey.shade200,
                  child: Column(
                    children: <Widget>[
                      Visibility(
                        visible: isThirdImage,
                        child: Column(
                          children: [
                            Image.network(
                              'https://www.localguidesconnect.com/t5/image/serverpage/image-id/1278258i67EFCFE965F69109?v=v2',
                              fit: BoxFit.cover,
                              height: 150,
                              width: 150,
                            ),
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text('Inani Beach'),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            isThirdImage
                                ? setState(() => isThirdImage = false)
                                : setState(
                                    () => isThirdImage = true,
                                  );
                          },
                          child: Text("See Place")),
                    ],
                  ),
                ),
                SizedBox(
                  child: Container(
                    width: 40,
                  ),
                ),
                Card(
                  color: Colors.grey.shade200,
                  child: Column(
                    children: <Widget>[
                      Visibility(
                        visible: isForthImage,
                        child: Column(
                          children: [
                            Image.network(
                              'https://www.travelandexplorebd.com/storage/app/public/posts/March2020/9hyD6VMjOYYQqvkX0YtS.jpg',
                              fit: BoxFit.cover,
                              height: 150,
                              width: 150,
                            ),
                            Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text('Fun Fest Beach'),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            isForthImage
                                ? setState(() => isForthImage = false)
                                : setState(() => isForthImage = true);
                          },
                          child: Text("See Place")),
                    ],
                  ),
                ),
              ],
            ),
            const SetNewLocation()
          ],
        ),
      ),
    );
  }
}
