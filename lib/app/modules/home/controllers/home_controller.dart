import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app/modules/home/pages/explore_page.dart';
import 'package:instagram_clone/app/modules/home/pages/home_page.dart';
import 'package:instagram_clone/app/modules/home/pages/profile_page.dart';
import 'package:instagram_clone/app/modules/home/pages/reels_page.dart';
import 'package:instagram_clone/app/modules/home/pages/shop_page.dart';

class HomeController extends GetxController {
  var _selectedPageIndex = 0.obs;

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

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
