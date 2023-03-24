import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts/controller/dashboard_controller.dart';
import 'package:inshorts/dashboard/content_view/content_page.dart';

class ContentPageView extends StatelessWidget {
  const ContentPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        body: InkWell(
          onTap: controller.toggleContentBottomNav,
          child: PageView(
            scrollDirection: Axis.vertical,
            controller: controller.feedPageController,
            children: [
              for (int i = 0; i < controller.listContent.length; i++)
                const ContentPage(),
            ],
            onPageChanged: (index) {
              controller.currentFeedPageIndex = index;
              controller.selectContent(controller.listContent[index]);
              controller.update();
            },
          ),
        ),
        bottomNavigationBar: Visibility(
            visible: controller.showContentBottomNavBar,
            maintainAnimation: true,
            maintainState: true,
            child: AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                opacity: controller.showContentBottomNavBar ? 1 : 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 70,
                        vertical: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: const [
                              Icon(Icons.share),
                              Text("Share"),
                            ],
                          ),
                          Column(
                            children: const [
                              Icon(Icons.bookmark),
                              Text("Bookmark"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ))),
      );
    });
  }
}
