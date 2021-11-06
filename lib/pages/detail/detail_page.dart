import 'package:app_foods/pages/detail/widgets/header.dart';
import 'package:app_foods/pages/detail/widgets/information.dart';
import 'package:app_foods/theme/apptheme.dart';
import 'package:flutter/material.dart';

import 'widgets/tab_videos.dart';

class DetailPage extends StatelessWidget {
  DetailPage({required this.path});

  final String path;
  @override
  Widget build(BuildContext context) {
    //Slivers
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          Header(path: path),
          Information(),
          TabVideos(path: path),
        ],
      ),
    );
  }
}
