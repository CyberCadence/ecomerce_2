import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  final String text;
  final Color color;
  const NormalButton(
      {this.color = Colors.blueAccent, required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      padding: const EdgeInsets.only(left: 15, right: 15),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), color: color),
      child: TextButton(
        onPressed: () {},

        // style: ButtonStyle(
        //     backgroundColor: MaterialStateProperty.all<Color>(color)),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
