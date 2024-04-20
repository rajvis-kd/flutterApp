import 'package:flutter/material.dart';
class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap ?? (index) => {},
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fitness_center), // Utiliser l'icône de la salle de fitness pour les entraînements
          label: 'Workouts',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.spa), // Utiliser l'icône de spa pour le yoga
          label: 'Yoga',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: 'Statistics',
        ),
      ],
      selectedLabelStyle: const TextStyle(
        fontSize: 14.0,
        color: Colors.blue,
        fontFamily: "Rubik",
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 14.0,
        color: Colors.grey,
        fontFamily: "Rubik",
        fontWeight: FontWeight.bold,
      ),
    );
  }
}