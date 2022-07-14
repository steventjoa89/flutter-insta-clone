import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app/data/mock.dart';
import 'package:instagram_clone/app/models/post.dart';
import 'package:instagram_clone/app/models/reel.dart';
import 'package:instagram_clone/app/modules/home/pages/explore_page.dart';
import 'package:instagram_clone/app/modules/home/pages/home_page.dart';
import 'package:instagram_clone/app/modules/home/pages/profile_page.dart';
import 'package:instagram_clone/app/modules/home/pages/reels_page.dart';
import 'package:instagram_clone/app/modules/home/pages/shop_page.dart';

class HomeController extends GetxController {
  var _selectedPageIndex = 0.obs;
  List<Post> posts = mockPosts;
  List<String> categories = mockCategories;
  List<Reel> reels = mockReels;

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

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  /**
   * Video Player Configuration:
   * 
   * 
  late VideoPlayerController videoPlayerController;
  late Future<void> videoPlayerFuture;

  -- INIT
  videoPlayerController = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
    videoPlayerFuture = videoPlayerController.initialize();
    videoPlayerController.setLooping(true);
    videoPlayerController.play();

  -- CLOSE
    videoPlayerController.dispose();


  -- WIDGET
  : FutureBuilder(
      future: controller.videoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState ==
            ConnectionState.done) {
          return AspectRatio(
            aspectRatio: controller
                .videoPlayerController.value.aspectRatio,
            child:
                VideoPlayer(controller.videoPlayerController),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
   */
}
