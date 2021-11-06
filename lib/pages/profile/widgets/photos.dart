import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  const Photos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _cards(
              "https://i.pinimg.com/474x/3b/77/dd/3b77dd8cb584e44fb278d11edc1afdf4.jpg"),
          _cards(
              "https://i.pinimg.com/474x/00/2b/0c/002b0c1f8667a39b35bbb9cfdd039fce.jpg"),
          _cards(
              "https://i.pinimg.com/474x/bc/9a/f4/bc9af4c2074cd1e679031a593d1e5b8d.jpg"),
          _cards(
              "https://i.pinimg.com/474x/5e/ba/83/5eba8362578e71cfc538869ab7ad2f30.jpg"),
          _cards(
              "https://i.pinimg.com/474x/8c/fe/70/8cfe70109cebae421df9e048d7a138aa.jpg"),
          _cards(
              "https://i.pinimg.com/474x/fa/35/94/fa3594b4fdfbb0c0f7b458f40fce1574.jpg"),
        ],
      ),
    );
  }

  Widget _cards(String path) {
    return Container(
      width: 120.0,
      margin: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        image: DecorationImage(image: NetworkImage(path), fit: BoxFit.cover),
      ),
    );
  }
}
