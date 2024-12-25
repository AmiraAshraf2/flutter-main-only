import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CartCategoryPage extends StatelessWidget {
  const CartCategoryPage({super.key, required this.category});
  final String category;

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
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            NewsListViewBuilder(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
