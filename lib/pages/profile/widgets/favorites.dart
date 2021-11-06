import 'package:app_foods/theme/apptheme.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> foods = [
      "Chicken Salad",
      "Meat Ball",
      "Soup",
      "Salad",
      "Tofur"
    ];
    List<String> paths = [
      "https://i.pinimg.com/474x/3b/77/dd/3b77dd8cb584e44fb278d11edc1afdf4.jpg",
      "https://i.pinimg.com/474x/00/2b/0c/002b0c1f8667a39b35bbb9cfdd039fce.jpg",
      "https://i.pinimg.com/474x/bc/9a/f4/bc9af4c2074cd1e679031a593d1e5b8d.jpg",
      "https://i.pinimg.com/474x/00/2b/0c/002b0c1f8667a39b35bbb9cfdd039fce.jpg",
      "https://i.pinimg.com/474x/bc/9a/f4/bc9af4c2074cd1e679031a593d1e5b8d.jpg",
    ];
    return ListView.builder(
      itemCount: foods.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: ListTile(
            title: Text(
              foods[index],
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Special Diets",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 17,
                      color: AppTheme.kPrimary,
                    ),
                    Icon(
                      Icons.star,
                      size: 17,
                      color: AppTheme.kPrimary,
                    ),
                    Icon(
                      Icons.star,
                      size: 17,
                      color: AppTheme.kPrimary,
                    ),
                    Icon(
                      Icons.star,
                      size: 17,
                      color: AppTheme.kPrimary,
                    ),
                    Icon(
                      Icons.star_outline,
                      size: 17,
                      color: AppTheme.kPrimary,
                    ),
                  ],
                ),
              ],
            ),
            leading: Container(
              width: 60.0,
              height: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                image: DecorationImage(
                  image: NetworkImage(paths[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            trailing: Column(
              children: [
                Text(
                  "6.2",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Cooked",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.black45,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
