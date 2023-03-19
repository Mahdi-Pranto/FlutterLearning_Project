import 'package:flutter/material.dart';
import 'package:myfirstapp/utilities/routes.dart';

class LogInForm extends StatelessWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "Log In",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            Container(
                padding: const EdgeInsets.all(20.0),
                child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Email or Phone",
                        hintText: "Your Email or Phone number",
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.all(16.0)))),
            Container(
              padding: const EdgeInsets.all(20.0),
              child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
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
