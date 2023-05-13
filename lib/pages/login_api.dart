import 'dart:convert';
import 'dart:io';
import 'package:myfirstapp/models/login_model.dart';

class LoginApi {
  static Future<List<LoginModel>> fetch(String email, String password) async {

    try {
      Map<String, String> body = {"email": email, "password": password};


      String url = "http://restapi.adequateshop.com/api/authaccount/login";


      HttpClient httpClient = HttpClient();

      HttpClientRequest request = await httpClient.postUrl(Uri.parse(url));

      // content type
      request.headers.set('content-type', 'application/json');

      request.add(utf8.encode(json.encode(body)));

      //Get response
      HttpClientResponse response = await request.close();

      String reply = await response.transform(utf8.decoder).join();
      httpClient.close();

      final data = jsonDecode(reply);

      if (data['code'] == 0) {
        List<LoginModel> loginModel = data["data"];

        return loginModel;
      } else {
        return [];
      }
    }catch(e){
      print(e.toString());
      return [];
    }
  }
}
