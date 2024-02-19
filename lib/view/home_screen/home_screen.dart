import 'package:flutter/material.dart';

import '../../utils/consts/data_consts.dart';
import 'widgets/action_buttons.dart';
import 'widgets/my_bottom_nav_bar.dart';
import 'widgets/recent_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/7077368/pexels-photo-7077368.jpeg'),
            ),
            SizedBox(width: 10),
            Icon(Icons.menu),
            SizedBox(width: 20),
          ],
        ),
        bottomNavigationBar: const MyBottomNavigationBar(),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Main Account',
                      style: TextStyle(
                          color: Color.fromARGB(255, 91, 3, 121),
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  '13.458 \$',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.visibility,
                      color: Colors.black38,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Current balance',
                      style: TextStyle(
                          color: Colors.black38, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ActionButtons(),
                SizedBox(height: 30),
                Text(
                  'Recent events',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 15),
                RecentListView(recentItems: recentItems)
              ],
            ),
          ),
        ));
  }
}
