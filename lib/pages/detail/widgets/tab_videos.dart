import 'package:app_foods/pages/detail/widgets/Directions.dart';
import 'package:app_foods/pages/detail/widgets/videos.dart';
import 'package:app_foods/theme/apptheme.dart';
import 'package:flutter/material.dart';

class TabVideos extends StatelessWidget {
  TabVideos({
    required this.path,
  });

  final String path;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: AppTheme.kSubPrimary,
              child: TabBar(
                labelColor: AppTheme.kPrimary,
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                indicatorColor: AppTheme.kPrimary,
                unselectedLabelColor: Colors.black54,
                tabs: [
                  Tab(text: 'Ingredients'),
                  Tab(text: 'Directions'),
                ],
              ),
            ),
            Container(
              height: 450,
              child: TabBarView(
                children: [
                  Videos(path: path),
                  Directions(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
