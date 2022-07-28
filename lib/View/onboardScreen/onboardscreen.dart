import 'package:ecomerce_2/View/Constants/constants.dart';
import 'package:ecomerce_2/View/Widgets/Buttons.dart';
import 'package:ecomerce_2/View/Widgets/TextWidget.dart';
import 'package:ecomerce_2/View/authScreen/authscreen.dart';
import 'package:flutter/material.dart';

import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  List<Widget> pages = [const Pageone(), const PageTwo(), const PageThree()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: pages.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(children: [
              Expanded(
                child: SizedBox(child: pages[index]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(3, (indexdots) {
                    return Container(
                      margin: const EdgeInsets.only(
                        bottom: 30,
                        right: 5,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8)),
                      height: 8,
                      width: index == indexdots ? 25 : 5,
                    );
                  })
                ],
              ),
            ]);
          }),
    );
  }
}

class Pageone extends StatelessWidget {
  const Pageone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(150),
                    bottomLeft: Radius.circular(150))),
            height: screenSize.height / 1.9,
            child: Lottie.asset('assets/animations/delivery2.json',
                width: MediaQuery.of(context).size.width / 1.5),
          ),
          Sized.height2,
          const TitleTextWidget(size: 22, text: 'Shop for your Daily Needs '),
          const TitleTextWidget(size: 22, text: 'in Your Ease'),
          Sized.height3,
          const DescriptionTextWidget(
              color: Colors.grey,
              text: 'Set your delivery location.Choose your'),
          const DescriptionTextWidget(
              color: Colors.grey, text: 'groceries from a wide range of our'),
          const DescriptionTextWidget(
              color: Colors.grey, text: 'required products'),
          Sized.height3,
          Sized.height1,
          NormalButton(
            text: 'Next',
            color: Colors.green,
          )
        ],
      ),
    ));
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(150),
                    bottomLeft: Radius.circular(150))),
            height: screenSize.height / 1.9,
            child: Lottie.asset('assets/animations/delivery3.json',
                width: MediaQuery.of(context).size.width / 1.5),
          ),
          Sized.height2,
          const TitleTextWidget(size: 22, text: 'Real Time Reporting'),
          Sized.height3,
          const DescriptionTextWidget(
              color: Colors.grey,
              text: 'Keeping track of sales with real-time'),
          const DescriptionTextWidget(
              color: Colors.grey, text: 'notifications'),
          Sized.height3,
          Sized.height1,
          NormalButton(
            text: 'Next',
            color: Colors.green,
          )
        ],
      ),
    ));
  }
}

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(150),
                    bottomLeft: Radius.circular(150))),
            height: screenSize.height / 1.9,
            child: Lottie.asset('assets/animations/delivery1.json',
                width: MediaQuery.of(context).size.width / 1.5),
          ),
          Sized.height2,
          const TitleTextWidget(size: 22, text: 'Fast Doorstep Deliveries '),
          Sized.height3,
          const DescriptionTextWidget(
              color: Colors.grey,
              text: 'Our delivery executive will deliver your '),
          const DescriptionTextWidget(
              color: Colors.grey, text: 'order in under 24 hours'),
          Sized.height3,
          Sized.height1,
          NormalButton(
            onPressed: () {
              Get.offAll(() => const AuthScreen());
            },
            text: 'Get Started',
            color: Colors.green,
          )
        ],
      ),
    ));
  }
}
