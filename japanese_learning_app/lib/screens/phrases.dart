import 'package:flutter/material.dart';
import 'package:japanese_learning_app/models/item.dart';
import 'package:japanese_learning_app/components/phrases_item.dart';

class Phrases extends StatelessWidget {
  const Phrases({super.key});
  final List<ItemModel> phrases = const [
    ItemModel(
        sound: "assets/sounds/phrases/what_is_your_name.wav",
        jpName: "namae wa nanidesu ka?",
        enName: "What is your name?"),
    ItemModel(
        sound: "assets/sounds/phrases/where_are_you_going.wav",
        jpName: "Doko ni iku no?",
        enName: "Where are you going?"),
    ItemModel(
        sound: "assets/sounds/phrases/are_you_coming.wav",
        jpName: "Kimasu ka?",
        enName: "Are You coming?"),
    ItemModel(
        sound: "assets/sounds/phrases/yes_im_coming.wav",
        jpName: "Hai, ikimasu",
        enName: "Yes,I am coming"),
    ItemModel(
        sound: "assets/sounds/phrases/dont_forget_to_subscribe.wav",
        jpName: "Kōdoku o wasurenaide kudasai",
        enName: "Don't forget to subscribe"),
    ItemModel(
        sound: "assets/sounds/phrases/how_are_you_feeling.wav",
        jpName: "Go kibun wa ikagadesu ka",
        enName: "How are You feeling"),
    ItemModel(
        sound: "assets/sounds/phrases/i_love_anime.wav",
        jpName: "Watashi wa anime ga daisukidesu",
        enName: "I love Anime"),
    ItemModel(
        sound: "assets/sounds/phrases/i_love_Programming.wav",
        jpName: "Watashi wa puroguramingu ga daisukidesu",
        enName: "I love Programming"),
    ItemModel(
        sound: "assets/sounds/phrases/programming_is_easy.wav",
        jpName: "Puroguramingu wa kantandesu",
        enName: "Programming is easy"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFEF6DB),
        appBar: AppBar(
          backgroundColor: const Color(0xff46322B),
          title: const Text(
            "Phrases",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return PhrasesItem(
              item: phrases[index],
            );
          },
        ));
  }
}
