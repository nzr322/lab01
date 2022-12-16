import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String firstName, secondName;
  const HomePage(this.firstName, this.secondName, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"), centerTitle: true),
      body: Center(
        child: Text('Hello $firstName $secondName'),
      ),
    );
  }
}