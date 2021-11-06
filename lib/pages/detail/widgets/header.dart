import 'package:app_foods/theme/apptheme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  Header({
    required this.path,
  });
  final String path;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      //floating: true,
      //stretch: true,
      //title: Text("SliverAppBar"),
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios),
      ),
      expandedHeight: 350.0,
      stretch: true,
      backgroundColor: AppTheme.kPrimary,
      flexibleSpace: FlexibleSpaceBar(
        title: Text("Egg Benefict"),
        stretchModes: [
          StretchMode.zoomBackground,
          StretchMode.blurBackground,
          StretchMode.fadeTitle,
        ],
        background: Hero(
          tag: "key_$path",
          child: Image.asset(
            path,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
