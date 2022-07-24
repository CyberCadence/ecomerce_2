import 'package:ecomerce_2/View/categoryScreen/categoryscreen.dart';
import 'package:ecomerce_2/View/favroteScreen/favscreen.dart';
import 'package:ecomerce_2/View/homescreen/homescreen.dart';
import 'package:ecomerce_2/View/profileScreen/profilescreen.dart';
import 'package:ecomerce_2/controller/mainscreencontroller/mainscreencontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class MainScreen extends StatelessWidget {
  final controller = Get.put(MainscreenController());
   MainScreen({Key? key}) : super(key: key);
  List pages = [
    HomeScreen(),
    CategoryScreen(),
    FavScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: pages[controller.index.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.index.value,
        selectedItemColor: Colors.green,
        onTap: controller.ontap,
        type: BottomNavigationBarType.fixed,
        iconSize: 18,
        items: const<BottomNavigationBarItem> [
          
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: "search"),
         BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "fav"),
         BottomNavigationBarItem(icon: Icon(Icons.person_outlined),label: "profile")
      ]),
    );
    });
  }
}