import 'package:flutter/material.dart';

import 'recent_list_tile.dart';

class RecentListView extends StatelessWidget {
  const RecentListView({
    super.key,
    required this.recentItems,
  });

  final List recentItems;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: recentItems.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return RecentListTile(recentItem: recentItems[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 10,
        );
      },
    );
  }
}
