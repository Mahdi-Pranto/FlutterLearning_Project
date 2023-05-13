class LoginModel {
  /*
          "Id": 212387,
        "Name": "simon",
        "Email": "Developer5@gmail.com",
        "Token": "d06e9f89-c551-49c9-a9f9-b7732e1dbe90"
  */

  int id = 0;
  String name = "";
  String email = "";
  String token = "";

  LoginModel(this.id, this.name, this.email, this.token);

  LoginModel.fromMap(Map<String, dynamic> map) {
    id = map["Id"];
    name = map["Name"];
    email = map["Email"];
    token = map["Token"];
  }

  Map<String, dynamic> toMap() {
    return {"Id": id, "Name": name, "Email": email, "Token": token};
  }
}
