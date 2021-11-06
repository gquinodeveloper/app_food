import 'package:app_foods/pages/profile/widgets/favorites.dart';
import 'package:app_foods/pages/profile/widgets/header.dart';
import 'package:app_foods/pages/profile/widgets/photos.dart';
import 'package:app_foods/theme/apptheme.dart';
import 'package:flutter/material.dart';

import 'widgets/categories.dart';
import 'widgets/content_title.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            ContentTitle(title: "Food Photos"),
            Photos(),
            ContentTitle(
              title: "Favorite Recipes",
              isShow: false,
            ),
            Categories(),
            Favorites()
          ],
        ),
      ),
    );
  }
}
