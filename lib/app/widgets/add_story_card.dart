import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:instagram_clone/app/data/mock.dart';

class AddStoryCard extends StatelessWidget {
  const AddStoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.pink,
              radius: 33,
              backgroundImage: NetworkImage(currentUser.profileImageUrl),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  iconSize: 20,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
        Spacer(),
        Text('Your Story',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500)),
      ],
    );
  }
}
