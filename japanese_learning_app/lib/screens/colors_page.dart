import 'package:flutter/material.dart';
import 'package:japanese_learning_app/models/item.dart';
import 'package:japanese_learning_app/components/item_category.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> colors = const [
    ItemModel(
        sound: "assets/sounds/colors/red.wav",
        image: "assets/images/colors/color_red.png",
        jpName: "Aka",
        enName: "Red"),
    ItemModel(
        sound: "assets/sounds/colors/green.wav",
        image: "assets/images/colors/color_green.png",
        jpName: "Midori",
        enName: "Green"),
    ItemModel(
        sound: "assets/sounds/colors/yellow.wav",
        image: "assets/images/colors/yellow.png",
        jpName: "Kiiro",
        enName: "Yellow"),
    ItemModel(
        sound: "assets/sounds/colors/white.wav",
        image: "assets/images/colors/color_white.png",
        jpName: "Shiro",
        enName: "White"),
    ItemModel(
        sound: "assets/sounds/colors/gray.wav",
        image: "assets/images/colors/color_gray.png",
        jpName: "Gurē",
        enName: "Gray"),
    ItemModel(
        sound: "assets/sounds/colors/dusty_yellow.wav",
        image: "assets/images/colors/color_dusty_yellow.png",
        jpName: "Hokori ppoi iro",
        enName: "Dusty Yellow"),
    ItemModel(
        sound: "assets/sounds/colors/brown.wav",
        image: "assets/images/colors/color_brown.png",
        jpName: "Chairo",
        enName: "Brown"),
    ItemModel(
        sound: "assets/sounds/colors/black.wav",
        image: "assets/images/colors/color_black.png",
        jpName: "Kuro",
        enName: "Black")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFEF6DB),
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text(
            "Colors",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return ItemCategory(
              color: const Color(0xff79359F),
              item: colors[index],
            );
          },
        ));
  }
}
