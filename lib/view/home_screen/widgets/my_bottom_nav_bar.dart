import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black87,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.black38,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'dgg'),
        BottomNavigationBarItem(
            icon: Icon(Icons.mode_comment_outlined), label: 'dg'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined), label: 'dgd'),
        BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outline), label: 'dg'),
      ],
    );
  }
}
