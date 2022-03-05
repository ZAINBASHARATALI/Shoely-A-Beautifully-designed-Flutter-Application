import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe_shop/consts.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/build_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 0,
        title: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: 'Shoely'.text.color(Colors.black).make()),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.money_rounded,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              const TabBar(
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    text: 'All',
                  ),
                  Tab(
                    text: 'Sport',
                  ),
                  Tab(
                    text: 'Men',
                  ),
                  Tab(text: 'Women'),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  buildList(items: allshoes),
                  buildList(items: sportshoeslist),
                  buildList(items: menshoeslist),
                  buildList(items: womenshoeslist),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
