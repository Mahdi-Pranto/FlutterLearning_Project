import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(children: [
              Image.asset("assets/images/coxsbazar.jpg", fit: BoxFit.contain),
              Container(
                alignment: Alignment.center,
                height: 70,
                child: Text(
                  "WELCOME TO COX'S BAZAR",
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
                color: Colors.cyanAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
