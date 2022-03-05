import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomChip extends StatelessWidget {
  const CustomChip({Key? key, required this.mycolor, required this.sizedata})
      : super(key: key);
  final Color mycolor;
  final String sizedata;
  @override
  Widget build(BuildContext context) {
    var value = false;
    return ChoiceChip(
        disabledColor: Colors.white,
        selectedColor: mycolor,
        label: sizedata.text.color(Colors.black).make(),
        onSelected: (v) {
          value = true;
        },
        selected: value);
  }
}
