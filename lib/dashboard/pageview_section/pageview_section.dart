import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts/controller/dashboard_controller.dart';

class PageViewSection extends StatelessWidget {
  const PageViewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return PageView.builder(
        controller: controller.pageController,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.amber,
            child: Center(
              child: Text(
                controller.currentPageIndex.toString(),
              ),
            ),
          );
        },
        onPageChanged: (index) {
          controller.currentPageIndex = index;
          controller.update();
        },
      );
    });
  }
}
