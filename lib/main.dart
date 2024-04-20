import 'package:flutter/material.dart';
import 'package:flutterapp/routes.dart';
import 'package:flutterapp/screens/ContainerPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ContainerPage.routeName,
      routes: routes,
    );
  }
}
