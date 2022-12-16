import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final inputFirstName = TextEditingController();
  final inputSecodmName = TextEditingController();
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login"), centerTitle: true),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(hintText: "Enter first name"),
              controller: inputFirstName,
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: "Enter second name"),
              controller: inputSecodmName,
            ),
            Container(
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(
                              inputFirstName.text, inputSecodmName.text)));
                },
                child: const Text('Next'),
              ),
            )
          ],
        ),
      ),
    );
  }
}