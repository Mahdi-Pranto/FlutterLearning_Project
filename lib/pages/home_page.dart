import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/SideBar.dart';
import 'package:myfirstapp/pages/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("TOUR APP"),
      ),
      body: Center(
        child: CardPage(),
      ),
      drawer: SideBar(),
      bottomNavigationBar: BottomAppBar(
        child: Text("Bottom Navigation Bar", textAlign: TextAlign.center),
        padding: EdgeInsets.all(20),
        color: Colors.green,
      ),
    );
  }
}
