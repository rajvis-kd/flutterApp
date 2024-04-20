import 'package:flutter/material.dart';
import '../../component/Page1.dart';


class AddWorkout extends StatelessWidget {
  const AddWorkout({super.key});
  void navigateToWorkoutView(BuildContext context) {
    // Access navigator using CustomNavigator's navigatorKey
    Navigator.of(context, rootNavigator: true).pushNamed(Page1.routeName);
  }

  @override
  Widget build(BuildContext context) {
    // width of the screen
    double screenWidth = MediaQuery.of(context).size.width;
    double aspectRatio = 16 / 11;
    double imageHeight = screenWidth / aspectRatio;

    return Container(
        width: screenWidth, // Provide width constraint
        height: imageHeight, // Provide height constraint
        child: Stack(
          children: [
            Positioned.fill(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Color(0xFF9827ec).withOpacity(1),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 50,
              child: GestureDetector(
                onTap:()=> navigateToWorkoutView(context),
                child: Row(
                  children: [
                    Text(
                      'Add Workout',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.double_arrow_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  }
}
