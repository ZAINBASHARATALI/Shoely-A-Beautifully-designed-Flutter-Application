import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_shop/models/shoemodel.dart';
import 'package:shoe_shop/screens/homescreen.dart';
import 'package:shoe_shop/widgets/choice_chip.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailsScreen extends StatefulWidget {
  // ignore: non_constant_identifier_names
  const DetailsScreen({Key? key, required this.detail_item}) : super(key: key);
  // ignore: non_constant_identifier_names
  final ShoeModel detail_item;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  color: Colors.white,
                  height: Get.height,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Get.height * 0.5,
                      ),
                      widget.detail_item.name.text.minFontSize(32).bold.make(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: 'Size'
                                .text
                                .minFontSize(18)
                                .fontWeight(FontWeight.w400)
                                .make(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomChip(
                                mycolor: widget.detail_item.color,
                                sizedata: 40.toString(),
                              ),
                              CustomChip(
                                mycolor: widget.detail_item.color,
                                sizedata: 41.toString(),
                              ),
                              CustomChip(
                                mycolor: widget.detail_item.color,
                                sizedata: 42.toString(),
                              ),
                              CustomChip(
                                mycolor: widget.detail_item.color,
                                sizedata: 43.toString(),
                              ),
                            ],
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                            height: Get.height * 0.07,
                            decoration: BoxDecoration(
                                color: widget.detail_item.color,
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.shop,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: Get.width * 0.05,
                                ),
                                'Add to Cart'
                                    .text
                                    .minFontSize(20)
                                    .color(Colors.white)
                                    .fontWeight(FontWeight.w600)
                                    .make(),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: Get.height * 0.55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: widget.detail_item.color,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              padding: const EdgeInsets.only(left: 20),
                              onPressed: () {
                                Get.off(() => const HomeScreen());
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            ),
                            IconButton(
                              padding: const EdgeInsets.only(right: 20),
                              onPressed: () {},
                              icon: const Icon(Icons.favorite),
                              color: Colors.white,
                            )
                          ],
                        ),
                        SizedBox(
                          height: Get.height * 0.41,
                          //clipBehavior: Clip.antiAlias,
                          child: Hero(
                            tag: 'shoepic',
                            child: Image.asset(
                              widget.detail_item.img,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
