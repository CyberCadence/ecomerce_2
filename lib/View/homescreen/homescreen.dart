import 'dart:ui';

import 'package:ecomerce_2/View/Constants/constants.dart';
import 'package:ecomerce_2/View/homescreen/homeScreenWidgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightResposnive = MediaQuery.of(context).size.height;
    final widthResposnive = MediaQuery.of(context).size.width;
    TextEditingController searchTextEditingController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        bottomOpacity: 0.0,
        backgroundColor: Colors.white,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            margin: EdgeInsets.only(left: 10),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/banana.png'))),
          ),
        ),
        title: const Center(
            child: Text(
          'Jenny Dwayne',
          style: TextStyle(color: Colors.black),
        )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.green,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag,
                color: Colors.green,
              ))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  width: widthResposnive / 1.3,
                  child: SearchInput(
                      textController: searchTextEditingController,
                      hintText: 'search Products'),
                ),
                const Spacer(),
                Container(
                  color: Colors.grey.shade200,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_list,
                        color: Colors.green,
                      )),
                )
              ],
            ),
            Sized.height2,
            Row(
              children: [
                const Text(
                  'Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Spacer(),
                GestureDetector(
                    child: const Text(
                  'see all',
                  style: TextStyle(color: Colors.green),
                ))
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  shrinkWrap: false,
                  itemBuilder: (context, index) {
                    return CategoryIconWidget();
                  }),
            ),
            Sized.height2,
            SliderWidget(),
            Row(
              children: [
                const Text(
                  'Top Selling',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Spacer(),
                GestureDetector(
                    child: const Text(
                  'see all',
                  style: TextStyle(color: Colors.green),
                ))
              ],
            ),
            Sized.height2,
            Container(
                margin: const EdgeInsets.only(
                  left: 10,
                ),
                height: 240,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: const EdgeInsets.only(left: 5, right: 5),
                          child: const TopSellingProductsWidget());
                    }))
          ],
        ),
      ),
    );
  }
}
