import 'package:flutter/material.dart';

class LabeledDivider extends StatelessWidget {
  final String label;
  const LabeledDivider({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 2,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.black38],
              ),
            ),
          ),
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.black54),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 2,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black38, Colors.transparent],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
