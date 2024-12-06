import 'package:flutter/material.dart';
import 'package:japanese_learning_app/models/item.dart';
import 'package:japanese_learning_app/components/item_category.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<ItemModel> family = const [
    ItemModel(
        sound: "assets/sounds/family_members/grandfather.wav",
        image: "assets/images/family_members/family_grandfather.png",
        jpName: "Ojīsan",
        enName: "Grandfather"),
    ItemModel(
        sound: "assets/sounds/family_members/grandmother.wav",
        image: "assets/images/family_members/family_grandmother.png",
        jpName: "Sobo",
        enName: "Grandmother"),
    ItemModel(
        sound: "assets/sounds/family_members/father.wav",
        image: "assets/images/family_members/family_father.png",
        jpName: "Chichioya",
        enName: "Father"),
    ItemModel(
        sound: "assets/sounds/family_members/mother.wav",
        image: "assets/images/family_members/family_mother.png",
        jpName: "Hahaoya",
        enName: "Mother"),
    ItemModel(
        sound: "assets/sounds/family_members/son.wav",
        image: "assets/images/family_members/family_son.png",
        jpName: "Musuko",
        enName: "Son"),
    ItemModel(
        sound: "assets/sounds/family_members/daughter.wav",
        image: "assets/images/family_members/family_daughter.png",
        jpName: "Musume",
        enName: "Daughter"),
    ItemModel(
        sound: "assets/sounds/family_members/older_bro.wav",
        image: "assets/images/family_members/family_older_brother.png",
        jpName: "Nīsan",
        enName: "Older Brother"),
    ItemModel(
        sound: "assets/sounds/family_members/older_sister.wav",
        image: "assets/images/family_members/family_older_sister.png",
        jpName: "Ane",
        enName: "Older Sister"),
    ItemModel(
        sound: "assets/sounds/family_members/younger_bro.wav",
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "Otōto",
        enName: "Younger Brother"),
    ItemModel(
        sound: "assets/sounds/family_members/younger_sister.wav",
        image: "assets/images/family_members/family_younger_sister.png",
        jpName: "Imōto",
        enName: "Younger Sister")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFEF6DB),
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text(
            "Family Members",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemCount: family.length,
          itemBuilder: (context, index) {
            return ItemCategory(
              color: const Color(0xff558B37),
              item: family[index],
            );
          },
        ));
  }
}
