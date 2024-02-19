import 'package:flutter/material.dart';

class SocialMediaLoginButtons extends StatelessWidget {
  const SocialMediaLoginButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/logos/google_ic.png'),
        ),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/logos/apple_ic.png'),
        ),
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/logos/facebook_ic.png'),
        ),
      ],
    );
  }
}
