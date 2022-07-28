import 'dart:ui';

import 'package:ecomerce_2/View/Constants/constants.dart';
import 'package:ecomerce_2/View/Widgets/TextWidget.dart';
import 'package:flutter/material.dart';

class CategoryIconWidget extends StatelessWidget {
  CategoryIconWidget(
      {this.width=80,
        Key? key, this.image, this.text = 'category', this.height = 80})
      : super(key: key);

  final String text;
  final String? image;
  final double height;
   final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
              child: Container(
            color: Colors.teal.shade100,
            child: Image.asset(
              'assets/images/banana.png',
              width: width,
              height: height,
            ),
          )),
          Sized.height2,
          const Text(
            'Fruits',
            style: const TextStyle(fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}

class SearchInput extends StatelessWidget {
  final TextEditingController textController;
  final String hintText;
  const SearchInput(
      {required this.textController, required this.hintText, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.1)),
      ]),
      child: TextField(
        controller: textController,
        onChanged: (value) {
          //Do something wi
        },
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.green,
          ),
          filled: true,
          fillColor: Colors.grey.shade200,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      ),
    );
  }
}

class TopSellingProductsWidget extends StatelessWidget {
  const TopSellingProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightResposnive = MediaQuery.of(context).size.height;
    final widthResposnive = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(20)),
      height: heightResposnive / 3.5,
      width: widthResposnive / 2.2,
      child: Column(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(top: 5, right: 5),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15)),
                  width: widthResposnive / 6,
                  height: heightResposnive / 22.8,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: const Text(
                      '30% off',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/images/banana.png',
              height: 100,
            ),
            const TitleTextWidget(size: 16, text: 'Organic Bananas'),
            const DescriptionTextWidget(text: '12 pcs'),
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TitleTextWidget(size: 14, text: '5.00'),
                  const DescriptionTextWidget(
                    text: '8.00',
                    size: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)),
                    height: 40,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart_checkout,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}

class SliderWidget extends StatelessWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) => Container(
                margin: const EdgeInsets.only(left: 5, right: 5),
                width: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/veg3.jpg',
                        ),
                        fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Sized.height1,
                    const Text(
                      'Fresh Vegetables',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    Sized.height2,
                    const Text(
                      'Get up to 50% off',
                      style: TextStyle(color: Colors.white),
                    ),
                    Sized.height2,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(4, (indexdots) {
                          return Container(
                            margin: const EdgeInsets.only(
                              bottom: 30,
                              right: 5,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)),
                            height: 8,
                            width: index == indexdots ? 25 : 5,
                          );
                        })
                      ],
                    )
                  ],
                ),
              ))),
    );
  }
}
