import 'package:ecomerce_2/controller/authcontroller/authcontroller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthTextFeildWidgwt extends StatelessWidget {
  String hint;
  IconData icon;
  TextEditingController? text_controller;

  String? Function(String?)? validator;
  bool pass = false;
  AuthTextFeildWidgwt(
      {Key? key,
      required this.hint,
      required this.icon,
      this.text_controller,
      this.pass = false,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.find();

    return Obx(() {
      return Container(
        margin: const EdgeInsets.only(top: 15, right: 6, left: 6),
        height: 46,
        child: TextFormField(
          obscureText: authController.obscuretext.value,
          textAlignVertical: TextAlignVertical.center,
          controller: text_controller,
          validator: validator,
          decoration: InputDecoration(
            isCollapsed: true,
            // isDense: true,
            hintStyle: TextStyle(fontSize: 12),
            hintText: hint,
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade500, width: 2),
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            suffixIcon: pass
                ? IconButton(
                    icon: Icon(
                      authController.obscuretext.value
                          ? Icons.remove_red_eye_outlined
                          : Icons.remove_red_eye,
                    ),
                    onPressed: authController.obscureText,
                  )
                : SizedBox(),
            prefixIcon: Icon(
              icon,
              color: Colors.grey,
              size: 22,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade500, width: 2),
              borderRadius: const BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            errorBorder: const UnderlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                borderSide: BorderSide(color: Colors.red, width: 2)),
          ),
        ),
      );
    });
  }
}
