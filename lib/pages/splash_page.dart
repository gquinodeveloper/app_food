import 'package:app_foods/pages/login_page.dart';
import 'package:app_foods/theme/apptheme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 80.0, bottom: 60.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/food_1.jpeg"),
            /* image: NetworkImage(
                "https://i.pinimg.com/474x/2d/e8/52/2de852314d68dadb190e2667756f8dd9.jpg"), */
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Text(
              "Good Food",
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Deliciously Simple.",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: Container(
                width: 250.0,
                height: 50.0, //size.height * 0.05,
                decoration: BoxDecoration(
                  color: AppTheme.kPrimary,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Start Cooking",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
