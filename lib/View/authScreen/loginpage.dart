

import 'package:ecomerce_2/View/authScreen/authwidgets/authtextfeild.dart';
import 'package:ecomerce_2/View/mainScreen/mainscreen.dart';
import 'package:ecomerce_2/View/productdetailscreen/productdetailscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {

  LoginPage({Key? key,}) : super(key: key);
  bool value = true;


  @override
  Widget build(BuildContext context) {
     final h = MediaQuery.of(context).size.height;
     final w = MediaQuery.of(context).size.width;
    return  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AuthTextFeildWidgwt(hint: "Username", icon: Icons.person),
            AuthTextFeildWidgwt(hint: "Password", icon: Icons.lock,pass: true,),
            Padding(
              padding: const EdgeInsets.only(right: 30, left: 15, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Transform.scale(
                          scale: 0.7,
                          child: Checkbox(
                            value: false,
                            onChanged: (value) {},
                            splashRadius: 0,
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                          )),
                      const Text("Remember me",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  const Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: (){Get.to(()=> MainScreen());},
              child: Container(
                      margin: EdgeInsets.only(bottom: h/40,top: 25),
                      alignment: Alignment.center,
                      height: 42,
                      width: 150,
                      decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Color(0XFF009B37)),
                      child: const Text("Login",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
                    ),
            )
          ],
        );
       
        
    
    
  }
}
