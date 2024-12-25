import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/list_view_news.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  // List<ArticleModel> articles = [];
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsServices(Dio()).getGeneralNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListViewNews(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text("opps,something want wrong try agan later"),
            );
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
    // return isLoading
    //     ? const SliverToBoxAdapter(
    //         child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty
    //         ? ListViewNews(articles: articles)
    //         : const SliverToBoxAdapter(
    //             child: Text("opps,something want wrong try agan later"),
    //           );
  }
}
