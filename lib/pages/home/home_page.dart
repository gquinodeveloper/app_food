import 'package:app_foods/pages/home/widgets/header.dart';
import 'package:app_foods/pages/home/widgets/tab_foods.dart';
import 'package:app_foods/theme/apptheme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            TabFoods(),
          ],
        ),
      ),
    );
  }
}
