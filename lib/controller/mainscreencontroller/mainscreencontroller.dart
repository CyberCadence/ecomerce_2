

import 'package:get/get.dart';

class MainscreenController extends GetxController{
  var index = 0.obs;

  void ontap(int i){
    index.value = i;
  }
}