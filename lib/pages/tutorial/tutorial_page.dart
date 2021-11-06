import 'package:app_foods/pages/video/video_page.dart';
import 'package:app_foods/theme/apptheme.dart';
import 'package:flutter/material.dart';

class TutorialPage extends StatelessWidget {
  TutorialPage({
    required this.path,
  });

  final String path;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: AppTheme.kPrimary,
          ),
        ),
        actions: [
          Icon(
            Icons.more_horiz_outlined,
            color: AppTheme.kPrimary,
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Egg Tacos",
              style: TextStyle(
                fontSize: 25.0,
                color: AppTheme.kPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(""),
            trailing: Column(
              children: [
                Text(
                  "6.3K",
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
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, _, __) {
                    return VideoPage();
                  },
                  transitionsBuilder: (_, animation, __, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  transitionDuration: Duration(milliseconds: 800),
                ),
              );
            },
            child: Container(
              width: double.infinity,
              height: 300.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(path),
                  fit: BoxFit.cover,
                ),
              ),
              child: Icon(
                Icons.play_circle_filled,
                size: 60.0,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60.0,
            color: AppTheme.kSubPrimary,
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
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
                Spacer(),
                Image.asset(
                  "assets/like.png",
                  color: AppTheme.kPrimary,
                  width: 20.0,
                ),
                SizedBox(width: 5.0),
                Text(
                  "288",
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(width: 25.0),
                Icon(
                  Icons.share,
                  size: 20.0,
                  color: AppTheme.kPrimary,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _points(
                  title: "Servings",
                  data: "2pp",
                ),
                _points(
                  title: "Prep Time",
                  data: "25m",
                ),
                _points(
                  title: "Cook Time",
                  data: "20m",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 160.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: AppTheme.kPrimary,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Start cooking",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  width: 160.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: AppTheme.kPrimary),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 15.0,
                        color: AppTheme.kPrimary,
                      ),
                      Text(
                        "Start cooking",
                        style: TextStyle(color: AppTheme.kPrimary),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _points({
    required String title,
    required String data,
  }) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black45,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          data,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
