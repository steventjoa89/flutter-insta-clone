// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/app/models/user.dart';
import 'package:instagram_clone/app/modules/home/controllers/home_controller.dart';
import 'package:instagram_clone/app/widgets/add_story_card_profile.dart';
import 'package:instagram_clone/app/widgets/profile_label_count.dart';

class ProfileHeader extends GetView<HomeController> {
  const ProfileHeader({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AddStoryCardProfile(user: user),
            // Profile Counter
            ProfileLabelCount(
              label: 'Posts',
              total: '89',
            ),
            ProfileLabelCount(
              label: 'Followers',
              total: '723K',
            ),
            ProfileLabelCount(
              label: 'Following',
              total: '8K',
            ),
          ],
        ),
        // User Info and Description
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'User information',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                    'Steven and Novi user information description #stevennovi'),
              )
            ],
          ),
        ),

        SizedBox(height: 6),
        // Edit Profile Button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 6),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(Icons.expand_more_outlined),
              )
            ],
          ),
        ),

        Obx(
          () => ExpansionTile(
            onExpansionChanged: (_isOpen) =>
                controller.isStoryExpandOpen.toggle(),
            title: Text(
              'Story Highlights',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            subtitle: controller.isStoryExpandOpen.isTrue
                ? Text(
                    'Keep your favorite stories on your file',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.5,
                        fontWeight: FontWeight.w400),
                  )
                : null,
            trailing: Icon(
              controller.isStoryExpandOpen.isTrue
                  ? Icons.expand_less_outlined
                  : Icons.expand_more_outlined,
              color: Colors.grey.shade500,
            ),
            children: [
              Container(
                height: 80,
                child: ListView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return index != 0
                        ? Container(
                            width: 80,
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey.shade300,
                              backgroundImage: NetworkImage(
                                  'https://picsum.photos/id/${index + 51}/400/400'),
                            ),
                          )
                        : Container(
                            width: 80,
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade400),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Icon(Icons.add, size: 30),
                                ),
                                SizedBox(height: 4),
                                Text('New',
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black))
                              ],
                            ),
                          );
                  },
                ),
              )
            ],
          ),
        ),
        Divider(
          height: 1,
          color: Colors.grey.shade800,
        )
      ],
    );
  }
}
