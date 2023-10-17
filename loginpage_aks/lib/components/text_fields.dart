import 'package:flutter/material.dart';

class Textfields extends StatelessWidget {
  const Textfields({
    super.key,
    required this.text,
    required this.iconType,
  });

  final String text;
  final IconData iconType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: text,
        labelStyle: const TextStyle(color: Colors.black),
        prefixIcon: Icon(iconType),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}
