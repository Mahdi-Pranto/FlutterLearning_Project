import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/SideBar.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: homepage(),
      
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.green),
      routes: {
        "/":(context) => HomePage(),
        "/login":(context) => loginPage(),

      },
      
    );
    
  }


}







