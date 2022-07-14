// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/app/data/mock.dart';
import 'package:instagram_clone/app/models/post.dart';
import 'package:instagram_clone/app/widgets/category_bar.dart';

import 'package:instagram_clone/app/widgets/custom_explore_app_bar.dart';
import 'package:instagram_clone/app/widgets/explore_tile.dart';
import 'package:instagram_clone/app/widgets/persistent_header.dart';

import '../controllers/home_controller.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExplorePage extends GetView<HomeController> {
  const ExplorePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomExploreAppBar(), // Search Box
            // Category List
            SliverPersistentHeader(
              pinned: true,
              delegate: PersistenHeader(
                child: CategoryBar(
                  categories: controller.categories,
                ),
              ),
            ),
            SliverStaggeredGrid.countBuilder(
              crossAxisCount: 3,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              staggeredTileBuilder: (int index) {
                int modedIndex = index % 20;
                int cXCellCount = modedIndex == 11 ? 2 : 1;
                double mXCellCount = 1;
                if (modedIndex == 2 || modedIndex == 11) {
                  mXCellCount = 2;
                }

                return StaggeredTile.count(cXCellCount, mXCellCount);
              },
              itemCount: 50,
              itemBuilder: (BuildContext context, int index) {
                return ExploreTile(
                    post: Post(
                        id: '$index',
                        postedBy: currentUser,
                        imageUrl:
                            'https://picsum.photos/id/${index + 10}/400/${index % 20 == 2 ? 805 : 400}',
                        title: 'title',
                        location: 'New York',
                        caption: 'this is caption',
                        postedTimeAgo: 'a few seconds ago',
                        totalLikes: '1767',
                        totalComments: '778',
                        isLiked: true,
                        isBookmarked: true));
              },
            )
          ],
        ),
      ),
    );
  }
}
