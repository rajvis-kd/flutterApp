import 'package:flutter/material.dart';
class Page1 extends StatelessWidget {
  static String routeName="page1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 1'),
        ),
        body: Center(
          child: Text(
            'Page 1 Content',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      );
  }
}