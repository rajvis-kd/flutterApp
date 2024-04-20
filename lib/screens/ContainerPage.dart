import 'package:flutter/material.dart';
import 'package:flutterapp/screens/workout/MyWorkout.dart';
import '../component/bottom-navigation-bar.dart';
import '../component/explorepage.dart';
import '../component/statics.dart';
import '../component/yoga.dart';
import 'Home.dart';


class ContainerPage extends StatefulWidget {
  static String routeName = "/homy";

  const ContainerPage({super.key});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<ContainerPage> {
  int _selectedIndex = 0;
  List<Widget> _pages = [
    Home(),
    ExplorePage(),
    MyWorkout(),
    YogaPage(),
    StaticPage(),
  ];
  late List<GlobalKey<NavigatorState>> _navigatorKeys;

  @override
  void initState() {
    super.initState();
    _navigatorKeys = List.generate(_pages.length, (_) => GlobalKey<NavigatorState>());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          IndexedStack(
            index: _selectedIndex,
            children: _pages,
          ),
          for (int i = 0; i < _pages.length; i++)
            Offstage(
              offstage: _selectedIndex != i,
              child: Navigator(
                key: _navigatorKeys[i],
                onGenerateRoute: (settings) => MaterialPageRoute(
                  settings: settings,
                  builder: (context) => _pages[i],
                ),
              ),
            ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

