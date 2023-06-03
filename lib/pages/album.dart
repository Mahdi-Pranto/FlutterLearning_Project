import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/album_model.dart';
import 'package:http/http.dart' as http;

class Album extends StatefulWidget {
  const Album({super.key});

  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  List<Temperatures> samplePosts = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Material(
              child: ListView.builder(
                itemCount: samplePosts.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                    margin: EdgeInsets.all(20),
                    height: 250,
                    color: Colors.blueGrey[100],
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "User Id: ${samplePosts[index].albumId}",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Id: ${samplePosts[index].id}",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Title: ${samplePosts[index].title}",
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Image.network(
                          "${samplePosts[index].url}",
                          cacheHeight: 100,
                          cacheWidth: 100,
                        )
                      ],
                    ),
                  );
                },
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Future<List<Temperatures>> getData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        samplePosts.add(Temperatures.fromJson(index));
      }
      return samplePosts;
    } else {
      return samplePosts;
    }
  }
}
