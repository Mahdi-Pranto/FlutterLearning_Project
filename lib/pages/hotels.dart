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
      body: ListView.builder(
        itemCount: clientList.length,
        itemBuilder: (context, index) {
          HotelModel item = HotelModel.fromMap(clientList[index]);

          return ListTile(
            leading: Text(item.id.toString()),
            title: Text(item.name.toString()),
            subtitle: Text(item.description.toString()),
          );
        },
      ),
    );
  }
}
