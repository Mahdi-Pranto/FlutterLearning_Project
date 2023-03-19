import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/SideBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("CATALOG APP"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to the home page of $days days of flutter"),
        ),
      ),
      drawer: SideBar(),
    );
  }
}
