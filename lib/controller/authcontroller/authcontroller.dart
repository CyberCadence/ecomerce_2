


import 'package:get/get.dart';

class AuthController extends GetxController{
  RxBool obscuretext = false.obs;


   void obscureText(){
    
    if(obscuretext.isTrue){
           obscuretext.value = false;
    }else if(obscuretext.isFalse){
          obscuretext.value = true;
    }
    
  }

}