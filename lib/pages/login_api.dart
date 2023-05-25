import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myfirstapp/models/login_model.dart';

class LoginApi {
  static Future<List<LoginModel>> fetch(String email, String password) async {
    Map<String, String> body = {"email": email, "password": password};
    Map<String, String> header = {"Content-Type": "application/json"};

    final response = await http.post(
        Uri.parse('http://restapi.adequateshop.com/api/authaccount/login'),
        headers: header,
        body: body);

    var data = jsonDecode(response.body.toString());
    print(data);
    if (data['code'] == 0) {
      List<LoginModel> loginModel = data["data"];
      print(data);
      return await loginModel;
    } else {
      return [];
    }
  }
}
