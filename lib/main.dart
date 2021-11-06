import 'package:app_foods/pages/detail/detail_page.dart';
import 'package:app_foods/pages/detail/widgets/Directions.dart';
import 'package:app_foods/pages/home/home_page.dart';
import 'package:app_foods/pages/login/login_page.dart';
import 'package:app_foods/pages/profile/profile_page.dart';
import 'package:app_foods/pages/splash/splash_page.dart';
import 'package:app_foods/theme/apptheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
      //home: LoginPage(),
      //home: HomePage(),
      //home: ProfilePage(),
      //home: DetailPage(),
      //home: DetailTemp(),
      //home: Directions(),
    );
  }
}
