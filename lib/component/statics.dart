import 'package:flutter/material.dart';
class StaticPage extends StatelessWidget {
  static String routeName = "/static";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('static')),
      body: Center(
        child: Text(' Statistics Page'),
      ),
    );
  }
}

