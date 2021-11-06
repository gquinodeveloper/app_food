import 'package:app_foods/theme/apptheme.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                "Egg Benedict",
                style: TextStyle(
                  fontSize: 25.0,
                  color: AppTheme.kPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Special Diets",
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Column(
                children: [
                  Text(
                    "6.2K",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Cooked",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 17,
                    color: AppTheme.kPrimary,
                  ),
                  Icon(
                    Icons.star,
                    size: 17,
                    color: AppTheme.kPrimary,
                  ),
                  Icon(
                    Icons.star,
                    size: 17,
                    color: AppTheme.kPrimary,
                  ),
                  Icon(
                    Icons.star,
                    size: 17,
                    color: AppTheme.kPrimary,
                  ),
                  Icon(
                    Icons.star_outline,
                    size: 17,
                    color: AppTheme.kPrimary,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "(288 Reviews)",
                    style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: AppTheme.kSubPrimary,
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: AppTheme.kPrimary,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _points(
                    title: "Servings",
                    data: "2pp",
                  ),
                  _points(
                    title: "Prep Time",
                    data: "25m",
                  ),
                  _points(
                    title: "Cook Time",
                    data: "20m",
                  ),
                ],
              ),
            ),
            _description(),
          ],
        ),
      ),
    );
  }

  Widget _points({
    required String title,
    required String data,
  }) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black45,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          data,
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _description() {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description",
            style: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 5.0),
          Text(
            "Abstract Polysaccharide from marine shellfish has various bioactivities. In this study, the effects of polysaccharide from Patinopecten yessoensis skirt (PS) on boosting immune response in mice were evaluated, and the potential mechanisms were explored. The results showed that PS administration effectively increased the serum",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
