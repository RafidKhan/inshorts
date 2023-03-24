import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts/controller/dashboard_controller.dart';
import 'package:inshorts/dashboard/content_view/content_page_view.dart';
import 'package:inshorts/dashboard/discover/discover_page.dart';

class DashPageViewSection extends StatelessWidget {
  const DashPageViewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return PageView(
        controller: controller.pageController,
        children: const [
          DiscoverPage(),
          ContentPageView(),
        ],
        onPageChanged: (index) {
          controller.currentPageIndex = index;
          controller.update();
        },
      );
    });
  }
}
