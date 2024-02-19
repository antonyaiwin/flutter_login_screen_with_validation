import 'package:flutter/material.dart';

class RecentListTile extends StatelessWidget {
  const RecentListTile({
    super.key,
    required this.recentItem,
  });

  final Map recentItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
      dense: true,
      minLeadingWidth: 45,
      horizontalTitleGap: 8,
      contentPadding: const EdgeInsets.only(left: 4, right: 13),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: const BorderSide(
            color: Colors.black12,
            width: 1,
          )),
      leading: Image.network(
        recentItem['image_url'],
        height: 45,
        width: 45,
      ),
      title: Text(
        recentItem['title'],
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        recentItem['sub_title'],
        style: const TextStyle(fontSize: 11, color: Colors.black38),
      ),
      trailing: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: recentItem['amount'] > 0
            ? BoxDecoration(
                color: Colors.purple.shade100.withOpacity(0.6),
                borderRadius: BorderRadius.circular(20),
              )
            : null,
        child: Text(
          '${recentItem['amount'].toStringAsFixed(2)} \$',
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
