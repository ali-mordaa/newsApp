import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/services/news_servics.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListVeiwBuilder extends StatefulWidget {
  const NewsListVeiwBuilder({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<NewsListVeiwBuilder> createState() => _NewsListVeiwBuilderState();
}

class _NewsListVeiwBuilderState extends State<NewsListVeiwBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getHttp(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            artecles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Text(
                "oopes it wase eeror , pleas try again",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          );
        } else {
          return const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
