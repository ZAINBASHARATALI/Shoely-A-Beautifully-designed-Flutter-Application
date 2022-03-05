import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'build_item.dart';
import '../models/shoemodel.dart';

// ignore: unused_element
Widget buildList({required List<ShoeModel> items}) {
  return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return index % 2 == 0
            ? FadeInLeft(
                duration: const Duration(milliseconds: 600),
                from: 400,
                child: BuildItem(items: items, index: index))
            : FadeInRight(
                duration: const Duration(milliseconds: 600),
                from: 400,
                child: BuildItem(items: items, index: index),
              );
      });
}
