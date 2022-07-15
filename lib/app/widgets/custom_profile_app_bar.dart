import 'package:flutter/material.dart';
import 'package:instagram_clone/app/models/user.dart';

class CustomProfileAppBar extends StatelessWidget {
  const CustomProfileAppBar({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      brightness: Brightness.light,
      centerTitle: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Icon(
              Icons.https_outlined,
              size: 20,
              color: Colors.black,
            ),
          ),
          Text(
            user.username,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add_box_outlined),
          color: Colors.black,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.dehaze_outlined),
          color: Colors.black,
        ),
      ],
    );
  }
}
