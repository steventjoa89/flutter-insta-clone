// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/app/widgets/category_bar.dart';

import 'package:instagram_clone/app/widgets/custom_explore_app_bar.dart';
import 'package:instagram_clone/app/widgets/persistent_header.dart';

import '../controllers/home_controller.dart';

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
                  categories: [
                    'steven',
                    'novi',
                    'stevennovi',
                    'iloveyou',
                    'missyou'
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
