import 'package:flutter/material.dart';

class CategoryGridView extends StatelessWidget {
  Category category;
  int index;
  Function onClickItem;

  CategoryGridView({
    required this.category,
    required this.index,
    required this.onClickItem,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClickItem(category);
      },
      child: Container(
        decoration: BoxDecoration(
          color: category.categoryBackground,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(index % 2 == 0 ? 25 : 0),
            bottomRight: Radius.circular(index % 2 == 0 ? 0 : 25),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(category.categoryImage),
            Text(
              category.categoryTitle,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Category {
  String categoryId;

  String categoryImage;

  String categoryTitle;

  Color categoryBackground;

  Category({
    required this.categoryId,
    required this.categoryImage,
    required this.categoryTitle,
    required this.categoryBackground,
  });
}
