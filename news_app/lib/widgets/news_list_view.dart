import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/widgets/news_titel.dart';

class NewsListView extends StatelessWidget {
  final List<ArticlesModel> artecles;

  const NewsListView({super.key, required this.artecles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: artecles.length,
        (context, index) => NewsTitel(
          articles: artecles[index],
        ),
      ),
    );
  }
}
