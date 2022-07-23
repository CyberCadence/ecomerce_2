import 'package:ecomerce_2/View/authScreen/authwidgets/authtextfeild.dart';

import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  bool value = true;

  @override
  Widget build(BuildContext context) {
     final h = MediaQuery.of(context).size.height;
     final w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child:  
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AuthTextFeildWidgwt(hint: "Username", icon: Icons.person),
              AuthTextFeildWidgwt(hint: "Email", icon: Icons.lock),
               AuthTextFeildWidgwt(hint: "phone", icon: Icons.person),
              AuthTextFeildWidgwt(hint: "Password", icon: Icons.lock,pass: true,),
              Padding(
                padding: const EdgeInsets.only( left: 15,top: 15),
                child: Row(
                  
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
                            fontWeight: FontWeight.bold)),
                    
                  ],
                ),
              ),
              Container(
            margin: EdgeInsets.only(bottom: h/40,top: 20 ),
            alignment: Alignment.center,
            height: 42,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Color(0XFF009B37)),
            child: const Text("SignUp",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          )
            ],
          ),
         
      
      );
    
  }
}
