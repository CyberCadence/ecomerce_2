
import 'package:ecomerce_2/View/authScreen/loginpage.dart';
import 'package:ecomerce_2/View/authScreen/signup_page.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}
late TabController tabController;

class _AuthScreenState extends State<AuthScreen> with SingleTickerProviderStateMixin{
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
     final w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Image.asset("assets/images/b.jpg",height:h/3.5,width: w,scale: 5, ),
            ),
            Expanded(
              child: Container(
                decoration:   BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius:0.0 ,
                      blurStyle: BlurStyle.inner,
                      blurRadius: 2,
                      color: Colors.grey.shade100
                    )
                  ]
                ),
                margin: EdgeInsets.symmetric(horizontal: 10),
             
                child: Card(
                  elevation: 0,
                  
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 40,
                        width: double.infinity,
                        child: TabBar(
                          indicator: UnderlineTabIndicator(borderSide: BorderSide(color: Colors.black),insets: EdgeInsets.symmetric(horizontal:70,vertical: 5)),
                          controller: tabController,
                          tabs: const [
                          Text("Login",style: TextStyle(color: Colors.black,fontSize: 24),),
                        Text("SignUp",style: TextStyle(color: Colors.black,fontSize: 24),),
                          
                        ],)
                      ),
                       Expanded(
                         child: TabBarView(
                          controller: tabController,
                          children:  [
                          LoginPage(),
                         SignUp()
                         ]),
                       ),

                    ],
                  ),
                ),
              ),
            ),
          
          ],
        )
      ),
    );
  }
}