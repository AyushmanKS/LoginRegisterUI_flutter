import 'package:flutter/material.dart';

class BottomDividers extends StatelessWidget {
  const BottomDividers({
    super.key,
  });

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
