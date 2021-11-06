import 'package:flutter/material.dart';

class ContentTitle extends StatelessWidget {
  ContentTitle({
    required this.title,
    this.isShow = true,
  });

  final String title;
  final bool isShow;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            isShow ? "Show all" : "",
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black45,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
