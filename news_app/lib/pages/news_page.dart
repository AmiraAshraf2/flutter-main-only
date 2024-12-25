import 'package:flutter/material.dart';
import 'package:news_app/widgets/list_view_cart_item.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "News",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Cloud",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.orange),
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: ListViewCartItem(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              NewsListViewBuilder(
                category: "general",
              ),
            ],
          ),
          // child: Column(children: [
          //   ListViewCartItem(),
          //   SizedBox(
          //     height: 32,
          //   ),
          //   Expanded(
          //     child: ListViewNews(),
          //   )
          // ]),
        ));
  }
}
