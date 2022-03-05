import 'dart:ui';

class ShoeModel {
  final String name;
  final String img;
  final String company;
  final double price;
  final bool isSelected;
  final Color color;

  ShoeModel(
    {
    required this.name,
    required this.img,
    required this.company,
    required this.price,
    required this.isSelected,
    required this.color, }
  );
}
