import 'package:flutter/material.dart';
import 'package:shoe_shop/screens/details.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/shoemodel.dart';
import 'package:get/get.dart';

// ignore: non_constant_identifier_names
Widget BuildItem({required List<ShoeModel> items, required int index}) {
  return Hero(
    tag: 'shoepic',
    child: InkWell(
      onTap: () {
        Get.to(() => DetailsScreen(
              detail_item: items[index],
            ));
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 10,
        child: Container(
          padding: const EdgeInsets.only(top: 10, left: 12),
          //height: Get.height * 0.307,
          //width: Get.width * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: items[index].color,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              items[index]
                  .name
                  .text
                  .maxFontSize(42)
                  .minFontSize(32)
                  .bold
                  .make(),
              Row(
                children: [
                  SizedBox(
                    width: Get.width * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        items[index]
                            .company
                            .text
                            .minFontSize(22)
                            .fontWeight(FontWeight.w700)
                            .make(),
                        SizedBox(
                          height: Get.height * 0.15,
                        ),
                        items[index]
                            .price
                            .text
                            .minFontSize(30)
                            .fontWeight(FontWeight.w700)
                            .make(),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.5,
                    child: ClipRRect(
                      child: Image.asset(
                        items[index].img,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
