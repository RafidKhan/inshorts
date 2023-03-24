import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts/controller/dashboard_controller.dart';
import 'package:inshorts/dashboard/content_view/content_page.dart';

class ContentPageView extends GetView<DashboardController> {
  const ContentPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: InkWell(
        onTap: controller.toggleContentBottomNavAndAppBar,
        child: PageView(
          scrollDirection: Axis.vertical,
          controller: controller.feedPageController.value,
          children: [
            for (int i = 0; i < controller.listContent.length; i++)
              const ContentPage(),
          ],
          onPageChanged: (index) {
            controller.onContentPageChange(index);
          },
        ),
      ),
      bottomNavigationBar: Obx(() {
        return Visibility(
          visible: controller.showContentBottomNavAndAppbar.value,
          maintainAnimation: true,
          maintainState: true,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            opacity: controller.showContentBottomNavAndAppbar.value ? 1 : 0,
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
                      InkWell(
                        onTap: () {
                          print("SHARE: ${controller.selectedContent}");
                        },
                        child: Column(
                          children: const [
                            Icon(Icons.share),
                            Text("Share"),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("BOOKMARK: ${controller.selectedContent}");
                        },
                        child: Column(
                          children: const [
                            Icon(Icons.bookmark),
                            Text("Bookmark"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
