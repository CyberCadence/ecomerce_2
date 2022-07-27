import 'package:ecomerce_2/controller/authcontroller/authcontroller.dart';
import 'package:get/get.dart';

Future<void> init() async {
  Get.lazyPut(() => AuthController());   //all dependency injection will be done here
}
