import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.purple.shade200,
              borderRadius: BorderRadius.circular(5)),
          child: const Icon(Icons.add),
        ),
        const SizedBox(width: 10),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.purple.shade200,
              borderRadius: BorderRadius.circular(5)),
          child: const Icon(Icons.arrow_right_alt),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.purple.shade100.withOpacity(0.6),
                borderRadius: BorderRadius.circular(5)),
            child: const Center(child: Text('Split a purchase')),
          ),
        ),
      ],
    );
  }
}
