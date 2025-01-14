import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?category=$category&apiKey=');
      Map<String, dynamic> jesonData = response.data;
      List<dynamic> articles = jesonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }

  Future<List<ArticleModel>> getSportsNews() async {
    final response = await dio.get(
        'https://newsapi.org/v2/top-headlines?category=sports&apiKey=c4eb45cf91a64291a39a6f8cef0accdf');
    Map<String, dynamic> jesonData = response.data;
    List<dynamic> articles = jesonData['articles'];
    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
