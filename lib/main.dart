import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        dividerColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      initialRoute: Routes.HOME,
      getPages: AppPages.routes,
    );
  }
}

/**
 * TODO
 * Login 
 * 1 Video di feed
 * Search History
 * setting popup & setting menu
 */