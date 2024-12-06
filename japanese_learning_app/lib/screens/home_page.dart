import 'package:flutter/material.dart';
import 'package:japanese_learning_app/components/category.dart';
import 'package:japanese_learning_app/screens/colors_page.dart';
import 'package:japanese_learning_app/screens/numders_page.dart';
import 'package:japanese_learning_app/screens/family_members_page.dart';
import 'package:japanese_learning_app/screens/phrases.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          "Language Learning App",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: "Numbers",
            color: const Color(0xffEF9235),
            tapOn: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumdersPage();
              }));
            },
          ),
          Category(
            text: "Family Members",
            color: const Color(0xff558B37),
            tapOn: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembers();
              }));
            },
          ),
          Category(
            text: "Colors",
            color: const Color(0xff79359F),
            tapOn: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
          ),
          Category(
            text: "Phrases",
            color: const Color(0xff50ADC7),
            tapOn: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Phrases();
              }));
            },
          ),
        ],
      ),
    );
  }
}
