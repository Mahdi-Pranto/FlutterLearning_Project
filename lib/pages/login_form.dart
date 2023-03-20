import 'package:flutter/material.dart';
import 'package:myfirstapp/utilities/routes.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  String name = "";
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 83, 86, 245), // background
                foregroundColor: Colors.black, // foreground
              ),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: const Text('Log in',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
    );
  }
}
