import 'package:flutter/material.dart';

class Materialbutton extends StatelessWidget {
  const Materialbutton({
    super.key,
    required this.size,
    required this.text,
  });

  final Size size;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      child: Container(
        alignment: Alignment.center,
        height: size.height * 0.080,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(37),
        ),
        child: text,
      ),
    );
  }
}
