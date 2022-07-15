import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/app/data/mock.dart';
import 'package:instagram_clone/app/models/post.dart';
import 'package:instagram_clone/app/models/reel.dart';
import 'package:instagram_clone/app/models/setting_menu.dart';
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

  var isStoryExpandOpen = false.obs;

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

  // Settings Menu PopUp
  final List<SettingMenu> settingMenu = [
    SettingMenu(menuTitle: 'Settings', menuIcon: Icons.settings_outlined),
    SettingMenu(menuTitle: 'Archived', menuIcon: Icons.history_outlined),
    SettingMenu(menuTitle: 'Your Activity', menuIcon: Icons.av_timer_outlined),
    SettingMenu(menuTitle: 'QR Code', menuIcon: Icons.qr_code_outlined),
    SettingMenu(menuTitle: 'Saved', menuIcon: Icons.bookmark_outline),
    SettingMenu(menuTitle: 'Cart', menuIcon: Icons.shopping_cart_outlined),
    SettingMenu(
        menuTitle: 'Orders and Payment', menuIcon: Icons.credit_card_outlined),
    SettingMenu(menuTitle: 'Close Friend', menuIcon: Icons.menu_open_outlined),
    SettingMenu(menuTitle: 'Discover People', menuIcon: Icons.person_add),
  ];

  void showBottomMenuModal(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      builder: (context) {
        return Container(
          height: Get.height * 0.5,
          color: Colors.white,
          child: ListView(
            children: [
              SizedBox(
                width: 2,
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 6,
                    width: Get.width * 0.05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey[350],
                    ),
                    child: null,
                  ),
                ),
              ),
              Container(
                height: Get.height * 0.5,
                child: ListView.builder(
                  itemCount: settingMenu.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          dense: true,
                          minLeadingWidth: 12,
                          leading: Icon(
                            settingMenu[index].menuIcon,
                            size: 26,
                          ),
                          title: Text(
                            '${settingMenu[index].menuTitle}',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        Divider(
                          height: 1,
                          indent: Get.width * 0.25,
                          color: Colors.grey.shade800,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
      context: context,
      isDismissible: true,
      isScrollControlled: true,
    );
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
