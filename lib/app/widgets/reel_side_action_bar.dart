// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:instagram_clone/app/data/mock.dart';
import 'package:instagram_clone/app/models/reel.dart';

class ReelSideActionBar extends StatelessWidget {
  const ReelSideActionBar({
    Key? key,
    required this.reel,
  }) : super(key: key);

  final double _iconSize = 25;
  final Reel reel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(reel.isLiked ? Icons.favorite : Icons.favorite_outline),
            iconSize: _iconSize,
            color: reel.isLiked ? Colors.red : Colors.white),
        Text('${reel.totalLikes}',
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        SizedBox(height: 10),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat_bubble_outline),
            iconSize: _iconSize,
            color: Colors.white),
        Text('${reel.totalComments}',
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        SizedBox(height: 10),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.send_outlined),
            iconSize: _iconSize,
            color: Colors.white),
        SizedBox(height: 2),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            iconSize: _iconSize,
            color: Colors.white),
        SizedBox(height: 10),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(reel.postedBy.profileImageUrl),
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
