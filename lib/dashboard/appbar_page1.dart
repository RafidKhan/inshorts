import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts/controller/dashboard_controller.dart';

class AppbarPage1Widget extends GetView<DashboardController> {
  const AppbarPage1Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Material(
        color: Colors.white,
        elevation: 1,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3.5,
                    child: InkWell(
                      onTap: () {
                        controller.selectPage(0);
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: const [
                            Icon(
                              Icons.arrow_back_ios,
                              color: Colors.blue,
                            ),
                            Text("Discover"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3.5,
                    child: InkWell(
                      onTap: () {
                        controller.selectPage(1);
                      },
                      child: Center(
                        child: Text(controller.selectedTab.value),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3.5,
                    child: InkWell(
                      onTap: () {
                        if (controller.currentFeedPageIndex.value > 0) {
                          controller.feedPageScrollToTop();
                        }
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          controller.currentFeedPageIndex.value == 0
                              ? Icons.replay
                              : Icons.arrow_upward,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 5,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
