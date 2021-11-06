import 'package:app_foods/theme/apptheme.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240.0,
      padding: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
      color: AppTheme.kSubPrimary,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.more_horiz_outlined,
                color: AppTheme.kPrimary,
              ),
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 60.0,
                backgroundImage: NetworkImage(
                  "https://i.pinimg.com/474x/03/70/25/037025943702fe44cb9292949949e585.jpg",
                ),
              ),
              SizedBox(width: 30.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kelly Jenson",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      _number(
                        num: 1208,
                        subTitle: "followers",
                      ),
                      SizedBox(width: 30.0),
                      _number(
                        num: 380,
                        subTitle: "followings",
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _number({
    required int num,
    required String subTitle,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$num",
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          subTitle,
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
