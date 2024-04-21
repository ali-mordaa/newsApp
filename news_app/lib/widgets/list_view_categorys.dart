import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class ListViewCategorys extends StatelessWidget {
  const ListViewCategorys({
    super.key,
  });

  final List<CategoryModel> categorys = const [
    CategoryModel(categoryName: "Business", imag: "assets/business.avif"),
    CategoryModel(
        categoryName: "Entertainment", imag: "assets/entertaiment.avif"),
    CategoryModel(categoryName: "Health", imag: "assets/health.avif"),
    CategoryModel(categoryName: "Science", imag: "assets/science.avif"),
    CategoryModel(categoryName: "Technology", imag: "assets/technology.jpeg"),
    CategoryModel(categoryName: "Sports", imag: "assets/sports.avif"),
    CategoryModel(categoryName: "General", imag: "assets/general.avif"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorys.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categorys[index],
            );
          }),
    );
  }
}
