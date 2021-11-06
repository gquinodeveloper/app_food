import 'package:app_foods/pages/tutorial/tutorial_page.dart';
import 'package:flutter/material.dart';

class Videos extends StatelessWidget {
  Videos({
    required this.path,
  });

  final String path;
  @override
  Widget build(BuildContext context) {
    List<String> ingredients = [
      "Sticks unsalted",
      "English on",
      " Eggs plus",
      "Lemon Juice"
    ];
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: ingredients.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (context, _, __) {
                      return TutorialPage(
                        path: path,
                      );
                    },
                    transitionsBuilder: (_, animation, __, child) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 600),
                  ),
                );
              },
              child: ListTile(
                title: Text(
                  ingredients[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                leading: Text(
                  "$index",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Divider(),
          ],
        );
      },
    );
  }
}
