import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:instagram_clone/app/widgets/custom_bottom_navigation_bar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() =>
          Center(child: controller.appPages[controller.selectedPageIndex])),
      bottomNavigationBar: Obx(
        () => CustomBottomNavigationBar(
            selectedPageIndex: controller.selectedPageIndex,
            onIconTap: controller.onIconTapped),
      ),
    );
  }
}
