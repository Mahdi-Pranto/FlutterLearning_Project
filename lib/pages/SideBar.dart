import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/api_test.dart';

import '../utilities/routes.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  final profileImage = "https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Mahdi",
                      style: TextStyle(fontWeight: FontWeight.w700)),
                  accountEmail: Text("mahdipranto@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(profileImage),
                  ),
                )),
            ListTile(
              title: Text("Hotels"),
              leading: Icon(Icons.map),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.hotelRoute);
              },
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Album'),
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.albumRoute);
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contacts),
              title: Text('Contact'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.api),
              title: Text('Api test'),
              onTap: () {
                // Navigator.pushNamed(context, MyRoutes.apiRoute);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ApiPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
