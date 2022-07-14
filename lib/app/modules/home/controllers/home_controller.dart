import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app/data/mock.dart';
import 'package:instagram_clone/app/models/post.dart';
import 'package:instagram_clone/app/modules/home/pages/explore_page.dart';
import 'package:instagram_clone/app/modules/home/pages/home_page.dart';
import 'package:instagram_clone/app/modules/home/pages/profile_page.dart';
import 'package:instagram_clone/app/modules/home/pages/reels_page.dart';
import 'package:instagram_clone/app/modules/home/pages/shop_page.dart';

class HomeController extends GetxController {
  var _selectedPageIndex = 0.obs;
  List<Post> posts = mockPosts;

  static const List<Widget> _appPages = [
    HomePage(),
    ExplorePage(),
    ReelsPage(),
    ShopPage(),
    ProfilePage()
  ];

  int get selectedPageIndex => _selectedPageIndex.value;
  List<Widget> get appPages => _appPages;

  void onIconTapped(int index) {
    _selectedPageIndex.value = index;
  }
}
