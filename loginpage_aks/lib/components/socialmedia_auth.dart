import 'package:flutter/material.dart';

class SocialMediaAuth extends StatelessWidget {
  const SocialMediaAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 35),

        // google auth button
        Padding(
          padding: const EdgeInsets.only(right: 35),
          child: InkWell(
            splashColor: Colors.white,
            onTap: () {},
            child: Ink.image(
              image: const AssetImage(
                'assets/images/google.png',
              ),
              height: 43,
              width: 43,
            ),
          ),
        ),

        // apple auth button
        Padding(
          padding: const EdgeInsets.only(right: 35),
          child: InkWell(
            splashColor: Colors.white,
            onTap: () {},
            child: Ink.image(
              image: const AssetImage(
                'assets/images/apple.png',
              ),
              height: 43,
              width: 43,
            ),
          ),
        ),

        // instagram auth button
        Padding(
          padding: const EdgeInsets.only(right: 35),
          child: InkWell(
            splashColor: Colors.white,
            onTap: () {},
            child: Ink.image(
              image: const AssetImage(
                'assets/images/instagram.png',
              ),
              height: 44,
              width: 44,
            ),
          ),
        ),

        // facebook auth button
        Padding(
          padding: const EdgeInsets.only(right: 35),
          child: InkWell(
            splashColor: Colors.white,
            onTap: () {},
            child: Ink.image(
              image: const AssetImage(
                'assets/images/facebook.png',
              ),
              height: 43,
              width: 43,
            ),
          ),
        ),
      ],
    );
  }
}
