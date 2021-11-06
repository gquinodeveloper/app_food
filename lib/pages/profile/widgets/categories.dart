import 'package:app_foods/theme/apptheme.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      "Cheese",
      "Steak",
      "Spaghetti",
      "Soup",
      "Others"
    ];

    return Container(
      width: double.infinity,
      height: 45.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            width: 90.0,
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.only(left: 15.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(
                color: AppTheme.kPrimary,
                width: 1.5,
              ),
            ),
            child: Text(
              categories[index],
              style: TextStyle(color: AppTheme.kPrimary),
            ),
          );
        },
      ),
    );
  }
}
