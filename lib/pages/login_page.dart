import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstapp/pages/login_form.dart';

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
          ),
          const SizedBox(
            height: 20,
          ),
          const LogInForm(),
        ],
      ),
    );
  }
}
