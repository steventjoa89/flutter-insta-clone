import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      pinned: true,
      centerTitle: false,
      title: Text(
        'Instagram',
        style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontFamily: 'Satisfy',
            fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined, color: Colors.black)),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border_outlined, color: Colors.black)),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.send_outlined, color: Colors.black))
      ],
    );
  }
}
