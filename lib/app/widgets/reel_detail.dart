// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app/models/reel.dart';

import 'package:instagram_clone/app/models/user.dart';
import 'package:marquee/marquee.dart';

class ReelDetail extends StatelessWidget {
  const ReelDetail({
    Key? key,
    required this.reel,
  }) : super(key: key);

  // final User user;
  final Reel reel;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              '${reel.postedBy.username}',
              style: TextStyle(color: Colors.white),
            ),
            leading: CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(reel.postedBy.profileImageUrl),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: ExpandableText(
              '${reel.caption}',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
              expandText: 'more',
              collapseText: 'less',
              expandOnTextTap: true,
              collapseOnTextTap: true,
              maxLines: 1,
              linkColor: Colors.grey,
            ),
          ),
          ListTile(
            dense: true,
            minLeadingWidth: 0,
            horizontalTitleGap: 5,
            title: Row(
              children: [
                Container(
                  height: 20,
                  width: 125,
                  child: Marquee(
                    text: '${reel.audioTitle}',
                    scrollAxis: Axis.horizontal,
                    velocity: 10,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
