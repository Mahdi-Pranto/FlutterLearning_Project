import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/Mythems.dart';
import 'package:myfirstapp/pages/api_test.dart';
import 'package:myfirstapp/pages/google_map.dart';
import 'package:myfirstapp/utilities/routes.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/SideBar.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: homepage(),

      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme(),

      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => loginPage(),
        MyRoutes.mapRoute: (context) => Google_Map(),
        MyRoutes.apiRoute: (context) => ApiPage(),
      },
    );
  }
}
