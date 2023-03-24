import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts/controller/dashboard_controller.dart';
import 'package:inshorts/dashboard/appbar_page0.dart';
import 'package:inshorts/dashboard/appbar_page1.dart';
import 'package:inshorts/dashboard/dash_pageview_section.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final dashboardController = Get.put(DashboardController());

  @override
  void initState() {
    // TODO: implement initState
    dashboardController.selectTab(dashboardController.listData[0]);
    dashboardController.selectContent(dashboardController.listContent[0]);
    dashboardController.forceHideBottomNavAndAppbar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar:
              dashboardController.currentPageIndex.value == 1,
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.copy(const Size.square(45)),
            child: Visibility(
              visible: dashboardController.showContentBottomNavAndAppbar.value,
              maintainAnimation: true,
              maintainState: true,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                opacity:
                    dashboardController.showContentBottomNavAndAppbar.isTrue
                        ? 1
                        : 0,
                child: dashboardController.currentPageIndex.value == 0
                    ? const AppbarPage0Widget()
                    : const AppbarPage1Widget(),
              ),
            ),
          ),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: const DashPageViewSection(),
          ),
        ),
      );
    });
  }
}
