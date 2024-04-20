import 'package:flutter/material.dart';
class YogaPage extends StatelessWidget {
  static String routeName = "/yoga";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('yoga')),
      body: Center(
        child: Text(' yoga Page'),
      ),
    );
  }
}

