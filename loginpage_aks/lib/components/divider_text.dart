import 'package:flutter/material.dart';

class DividerText extends StatelessWidget {
  const DividerText({
    super.key,
    required this.text,
  });

  final Text text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        children: [
          // Divider Left
          Expanded(
            child: Divider(
              thickness: 2,
              color: Colors.grey.shade900,
            ),
          ),

          // Or continue with Text
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: text,
          ),

          // Divider right
          Expanded(
            child: Divider(
              thickness: 2,
              color: Colors.grey.shade900,
            ),
          ),
        ],
      ),
    );
  }
}
