import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticlesModel>> getHttp({required String category}) async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=45c3a8a21d5c48ebab4a33b10bb5b039&category=$category');

    Map<String, dynamic> josnData = response.data;
    List<dynamic> articles = josnData["articles"];
    List<ArticlesModel> articlesModel = [];
    for (var article in articles) {
      articlesModel.add(ArticlesModel.fromeJosn(article));
    }
    return articlesModel;
  }
}
