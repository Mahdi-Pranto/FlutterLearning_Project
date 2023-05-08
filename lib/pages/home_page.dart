import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/SideBar.dart';
import 'package:myfirstapp/pages/card.dart';
import 'package:myfirstapp/pages/login_page.dart';

import '../utilities/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Text("TOUR APP"),
        actions: [
          IconButton(
              icon: Icon(Icons.login,
                  color: Color.fromARGB(255, 255, 255, 255), size: 34.0),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.loginRoute);
              }),
          IconButton(
              icon: Icon(Icons.search,
                  color: Color.fromARGB(255, 255, 255, 255), size: 34.0),
              onPressed: () {}),
        ],
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
