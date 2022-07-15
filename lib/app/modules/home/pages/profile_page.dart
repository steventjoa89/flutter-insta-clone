import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:instagram_clone/app/data/mock.dart';
import 'package:instagram_clone/app/widgets/custom_profile_app_bar.dart';
import 'package:instagram_clone/app/widgets/persistent_header.dart';
import 'package:instagram_clone/app/widgets/profile_header.dart';

import '../controllers/home_controller.dart';

class ProfilePage extends GetView<HomeController> {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, index) {
          return [
            CustomProfileAppBar(user: currentUser),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ProfileHeader(user: currentUser),
              ),
            ),
            // TABBAR
            SliverPersistentHeader(
              pinned: true,
              delegate: PersistenHeader(
                child: TabBar(
                  indicatorWeight: 1,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(icon: Icon(Icons.grid_on)),
                    Tab(icon: Icon(Icons.assignment_ind_outlined)),
                  ],
                ),
              ),
            )
          ];
        },
        body: TabBarView(
          children: [
            CustomScrollView(
              physics: ClampingScrollPhysics(),
              slivers: [
                SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://picsum.photos/id/${index + 10}/400/400'),
                        ),
                      ),
                    );
                  }, childCount: 20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1),
                ),
              ],
            ),
            CustomScrollView(
              physics: ClampingScrollPhysics(),
              slivers: [
                SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://picsum.photos/id/${index + 100}/400/400'),
                        ),
                      ),
                    );
                  }, childCount: 20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
