import 'package:flutter/material.dart';

import 'AddWorkout.dart';
class MyWorkout extends StatelessWidget {
  static String routeName = "/workout";

  const MyWorkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
          children: [
          AddWorkout(),
      ],
      ),
    );
  }
}
