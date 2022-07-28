 
import 'package:ecomerce_2/View/categoryScreen/categoryscreen.dart';
import 'package:ecomerce_2/View/homescreen/homescreen.dart';
 
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/dependency_injections.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const GetMaterialApp(
    home:CategoryScreen(),
  ));
}
