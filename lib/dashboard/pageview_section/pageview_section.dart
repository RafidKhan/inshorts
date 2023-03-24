import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts/controller/dashboard_controller.dart';
import 'package:inshorts/dashboard/discover/discover_page.dart';
import 'package:inshorts/dashboard/my_feed/my_feed_page.dart';

class PageViewSection extends StatelessWidget {
  const PageViewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return PageView(
        controller: controller.pageController,
        children: const[
          DiscoverPage(),
          MyFeedPage(),
        ],
        onPageChanged: (index) {
          controller.currentPageIndex = index;
          controller.update();
        },
      );
    });
  }
}
