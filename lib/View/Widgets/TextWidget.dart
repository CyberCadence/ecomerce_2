import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  const TitleTextWidget(
      {this.color = Colors.black,
      Key? key,
      required this.size,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class DescriptionTextWidget extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  const DescriptionTextWidget(
      {this.color = Colors.black, Key? key, this.size = 15, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: size, color: color, fontWeight: FontWeight.w400),
    );
  }
}
