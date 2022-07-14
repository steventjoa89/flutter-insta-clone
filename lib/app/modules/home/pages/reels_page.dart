import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:instagram_clone/app/data/mock.dart';
import 'package:instagram_clone/app/widgets/reel_detail.dart';
import 'package:instagram_clone/app/widgets/reel_side_action_bar.dart';

import '../controllers/home_controller.dart';

class ReelsPage extends GetView<HomeController> {
  const ReelsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.9),
        elevation: 0,
        centerTitle: false,
        title: Text(
          'Reels',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.photo_camera_outlined),
            color: Colors.white,
          )
        ],
      ),
      body: PageView.builder(
        itemCount: controller.reels.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://picsum.photos/id/${index + 1047}/800/1080'),
              ),
            ),
            child: Center(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.4),
                          Colors.transparent
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                            flex: 14,
                            child: Container(
                              child: ReelDetail(reel: controller.reels[index]),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Container(
                                height: 350,
                                child: ReelSideActionBar(
                                  reel: controller.reels[index],
                                )),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
