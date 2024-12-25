import 'package:flutter/material.dart';
import 'package:news_app/models/cart_model.dart';
import 'package:news_app/pages/cart_category_page.dart';

class CartCategory extends StatelessWidget {
  const CartCategory({super.key, required this.cart});
  final CartModel cart;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CartCategoryPage(
            category: cart.cartName.toLowerCase(),
          );
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 150,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(cart.image),
                fit: BoxFit.fill,
              )),
          child: Center(
              child: Text(
            cart.cartName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )),
        ),
      ),
    );
  }
}
