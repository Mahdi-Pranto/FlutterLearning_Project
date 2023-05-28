import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../data.dart';
import '../models/hotels.dart';

class Hotel extends StatelessWidget {
  const Hotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 20),
      child: ListView.builder(
        itemCount: clientList.length,
        itemBuilder: (context, index) {
          HotelModel item = HotelModel.fromMap(clientList[index]);

          return Card(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 30, top: 20),
              child: ListTile(
                trailing: Text(
                  "${item.price}\$",
                  textScaleFactor: 1.5,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Text(item.name.toString()),
                subtitle: Text(item.location.toString()),
                leading: Image.network(
                    "https://cf.bstatic.com/xdata/images/hotel/max1024x768/120397144.jpg?k=ca74ce65d75e5c0abe4a14b79923353a5920164cefb9160580b06868c236c4cc&o=&hp=1"),
              ),
            ),
          );
        },
      ),
    ));
  }
}
