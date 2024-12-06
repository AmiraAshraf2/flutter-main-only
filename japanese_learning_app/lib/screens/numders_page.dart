import 'package:flutter/material.dart';
import 'package:japanese_learning_app/models/item.dart';
import 'package:japanese_learning_app/components/item_category.dart';

class NumdersPage extends StatelessWidget {
  const NumdersPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel(
        sound: "assets/sounds/numbers/number_one_sound.mp3",
        image: "assets/images/numbers/number_one.png",
        jpName: "ichi",
        enName: "one"),
    ItemModel(
        sound: "assets/sounds/numbers/number_two_sound.mp3",
        image: "assets/images/numbers/number_two.png",
        jpName: "Ni",
        enName: "two"),
    ItemModel(
        sound: "assets/sounds/numbers/number_three_sound.mp3",
        image: "assets/images/numbers/number_three.png",
        jpName: "San",
        enName: "three"),
    ItemModel(
        sound: "assets/sounds/numbers/number_four_sound.mp3",
        image: "assets/images/numbers/number_four.png",
        jpName: "Shi",
        enName: "four"),
    ItemModel(
        sound: "assets/sounds/numbers/number_five_sound.mp3",
        image: "assets/images/numbers/number_five.png",
        jpName: "Go",
        enName: "five"),
    ItemModel(
        sound: "assets/sounds/numbers/number_six_sound.mp3",
        image: "assets/images/numbers/number_six.png",
        jpName: "Roku",
        enName: "six"),
    ItemModel(
        sound: "assets/sounds/numbers/number_seven_sound.mp3",
        image: "assets/images/numbers/number_seven.png",
        jpName: "Sebun",
        enName: "seven"),
    ItemModel(
        sound: "assets/sounds/numbers/number_eight_sound.mp3",
        image: "assets/images/numbers/number_eight.png",
        jpName: "hachi",
        enName: "eight"),
    ItemModel(
        sound: "assets/sounds/numbers/number_nine_sound.mp3",
        image: "assets/images/numbers/number_nine.png",
        jpName: "Kyū",
        enName: "nine"),
    ItemModel(
        sound: "assets/sounds/numbers/number_ten_sound.mp3",
        image: "assets/images/numbers/number_ten.png",
        jpName: "Jū",
        enName: "ten")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFEF6DB),
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text(
            "Numders",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return ItemCategory(
              color: const Color(0xffEF9235),
              item: numbers[index],
            );
          },
        ));
  }
}

List<Widget> getList(List<ItemModel> numbers) {
  List<Widget> itemsList = [];
  for (int i = 0; i < numbers.length; i++) {
    itemsList
        .add(ItemCategory(color: const Color(0xffEF9235), item: numbers[i]));
  }
  return itemsList;
}
