import 'package:flutter/material.dart';
import 'package:japanese_learning_app/models/item.dart';
import 'package:japanese_learning_app/components/item_info.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item});
  final ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff50ADC7),
      height: 100,
      child: ItemInfo(item: item),
    );
  }
}
