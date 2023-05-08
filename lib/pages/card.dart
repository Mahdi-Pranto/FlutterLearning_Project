import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});
  static const place_name = "COX'S BAZAR";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Stack(children: [
              Image.asset("assets/images/coxsbazar.jpg", fit: BoxFit.contain),
              Container(
                alignment: Alignment.center,
                height: 70,
                child: Text(
                  "WELCOME TO $place_name",
                  style: TextStyle(
                    fontFamily: GoogleFonts.dancingScript().fontFamily,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
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
                SizedBox(
                  child: Container(
                    width: 40,
                  ),
                ),
                Card(
                  color: Colors.grey.shade200,
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        'https://www.touristplaces.com.bd/images/pp/5/p114771.jpg',
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
                      Image.network(
                        'https://www.localguidesconnect.com/t5/image/serverpage/image-id/1278258i67EFCFE965F69109?v=v2',
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
                SizedBox(
                  child: Container(
                    width: 40,
                  ),
                ),
                Card(
                  color: Colors.grey.shade200,
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        'https://www.travelandexplorebd.com/storage/app/public/posts/March2020/9hyD6VMjOYYQqvkX0YtS.jpg',
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
