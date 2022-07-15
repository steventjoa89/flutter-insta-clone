import 'package:flutter/material.dart';
import 'package:instagram_clone/app/models/user.dart';

class AddStoryCardProfile extends StatelessWidget {
  const AddStoryCardProfile({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundColor: Colors.pink,
          radius: 45,
          backgroundImage: NetworkImage(user.profileImageUrl),
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
    );
  }
}
