import 'package:ecomerce_2/View/homescreen/homeScreenWidgets.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text('Categories',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
      ),
      body: GridView.builder(
          itemCount: 7,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 7, crossAxisCount: 3),
          itemBuilder: (context, index) {
            return CategoryIconWidget(
              height: 60,
              width: 60,
            );
          }),
    );
  }
}
