import 'package:flutterapp/component/Page1.dart';
import 'package:flutterapp/component/explorepage.dart';
import 'package:flutterapp/component/statics.dart';
import 'package:flutterapp/screens/ContainerPage.dart';
import 'package:flutterapp/screens/Home.dart';
import 'package:flutterapp/screens/workout/MyWorkout.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  ContainerPage.routeName: (context) =>  ContainerPage(),
  Home.routeName: (context) =>  Home(),
  ExplorePage.routeName: (context) =>  ExplorePage(),
  StaticPage.routeName: (context) =>  StaticPage(),
  MyWorkout.routeName: (context) => const MyWorkout(),
  Page1.routeName: (context) => Page1(),
};