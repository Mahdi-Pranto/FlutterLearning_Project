import 'package:flutter/material.dart';
import 'package:myfirstapp/utilities/routes.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  String name = "";
  bool changedBtn = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Username",
                    hintText: "Your Username",
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(16.0)),
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
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: "Your Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(16.0))),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Forget Password?"),
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  changedBtn = true;
                });
                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
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
                decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: changedBtn
                        ? BorderRadius.circular(50)
                        : BorderRadius.circular(8)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
