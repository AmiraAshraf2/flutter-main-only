import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(
      {super.key, required this.text, required this.color, this.tapOn});

  final String text;
  final Color color;
  final VoidCallback? tapOn;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapOn,
      child: Container(
        padding: const EdgeInsets.only(left: 18),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 65,
        color: color,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
