import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:instagram_clone/app/widgets/custom_home_app_bar.dart';

import '../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [CustomHomeAppBar()],
    );
  }
}
