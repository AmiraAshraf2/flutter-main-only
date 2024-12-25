import 'package:flutter/material.dart';
import 'package:news_app/models/cart_model.dart';
import 'package:news_app/widgets/cart_category.dart';

class ListViewCartItem extends StatelessWidget {
  const ListViewCartItem({super.key});
  final List<CartModel> carts = const [
    CartModel(image: "assets/business.jpg", cartName: "Business"),
    CartModel(image: "assets/entertaiment.jpg", cartName: "Entertainment"),
    CartModel(image: "assets/general.jpg", cartName: "General"),
    CartModel(image: "assets/health.jpg", cartName: "Health"),
    CartModel(image: "assets/science.jpg", cartName: "Science"),
    CartModel(image: "assets/sports.jpg", cartName: "Sports"),
    CartModel(image: "assets/technology.jpg", cartName: "Technology"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 85,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: carts.length,
          itemBuilder: (context, index) {
            return CartCategory(cart: carts[index]);
          },
        ));
  }
}
