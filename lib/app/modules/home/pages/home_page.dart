import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:instagram_clone/app/data/mock.dart';
import 'package:instagram_clone/app/widgets/add_story_card.dart';
import 'package:instagram_clone/app/widgets/custom_home_app_bar.dart';
import 'package:instagram_clone/app/widgets/story_card.dart';

import '../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CustomHomeAppBar(),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                height: 100,
                child: ListView.builder(
                  itemCount: stories.length + 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      // color: Colors.amber,
                      width: 80,
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: index == 0
                          ? AddStoryCard()
                          : StoryCard(
                              story: stories[index - 1],
                            ),
                    );
                  },
                ),
              ),
              Divider(height: 1),
            ],
          ),
        )
      ],
    );
  }
}
