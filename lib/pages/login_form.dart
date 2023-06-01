import 'package:flutter/material.dart';
import 'package:myfirstapp/pages/login_api.dart';
import 'package:myfirstapp/utilities/routes.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  String name = "";
  bool changedBtn = false;
  final _formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                "Welcome $name",
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Username",
                      hintText: "Your Username",
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(16.0)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please type username";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {
                      build(context);
                    });
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: "Your Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(16.0)),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please type username";
                    } else if (value.length < 6) {
                      return "Please enter 6 or more digit";
                    }
                    return null;
                  },
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Forget Password?"),
              ),
              Material(
                color: Colors.deepPurpleAccent,
                borderRadius: changedBtn
                    ? BorderRadius.circular(50)
                    : BorderRadius.circular(8),
                child: InkWell(
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        changedBtn = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      await Navigator.pushNamed(context, MyRoutes.homeRoute);
                      setState(() {
                        changedBtn = false;
                      });

                      return;
                    }

                    String email = emailController.text;
                    String password = passwordController.text;

                    print(LoginApi.fetch(email, password));
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changedBtn ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: changedBtn
                        ? Icon(Icons.done)
                        : Text(
                            'Log in',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
