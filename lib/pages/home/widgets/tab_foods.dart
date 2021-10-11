import 'package:app_foods/pages/home/widgets/tab_featured.dart';
import 'package:app_foods/pages/home/widgets/tab_new.dart';
import 'package:app_foods/pages/home/widgets/tab_popular.dart';
import 'package:app_foods/theme/apptheme.dart';
import 'package:flutter/material.dart';

class TabFoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: TabBar(
              labelColor: AppTheme.kPrimary,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelColor: Colors.black54,
              tabs: [
                Tab(text: 'Featured'),
                Tab(text: 'Popular'),
                Tab(text: 'New'),
              ],
            ),
          ),
          Container(
            height: 400,
            child: TabBarView(
              children: [
                TabFeatured(),
                TabPopular(),
                TabNew(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
