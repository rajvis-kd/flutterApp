import 'package:flutter/material.dart';
class ExplorePage extends StatelessWidget {
  static String routeName = "/explore";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Explore')),
      body: Center(
        child: Text(' explore Page'),
      ),
    );
  }
}
