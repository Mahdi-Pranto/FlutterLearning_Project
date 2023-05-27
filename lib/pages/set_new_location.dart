import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SetNewLocation extends StatefulWidget {
  const SetNewLocation({super.key});

  @override
  State<SetNewLocation> createState() => _SetNewLocationState();
}

class _SetNewLocationState extends State<SetNewLocation> {
  String locationName = "";
  var isDone = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.grey.shade200,
          child: Column(
            children: <Widget>[
              Visibility(
                child: Column(
                  children: [
                    Image.network(
                      'https://www.localguidesconnect.com/t5/image/serverpage/image-id/1278258i67EFCFE965F69109?v=v2',
                      fit: BoxFit.cover,
                      height: 150,
                      width: 150,
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('${locationName}'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 20)),
        Center(
            child: Text(
          "Set location",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        Container(
          padding: EdgeInsets.all(20),
          child: TextFormField(
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Name of the Location",
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding: EdgeInsets.all(16.0)),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
        ),
        ElevatedButton(onPressed: () {}, child: Text("Done"))
      ],
    );
  }
}
