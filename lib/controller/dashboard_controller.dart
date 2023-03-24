import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final Rx<PageController> pageController =
      Rx<PageController>(PageController(initialPage: 1));
  final Rx<PageController> feedPageController =
      Rx<PageController>(PageController());



  Rx<int> currentPageIndex = Rx<int>(1);
  Rx<int> currentFeedPageIndex = Rx<int>(0);

  Rx<String> selectedTab = Rx<String>("");

  Rx<Map<String, dynamic>> selectedContent = Rx<Map<String, dynamic>>({});

  RxBool showContentBottomNavAndAppbar = true.obs;

  selectTab(String text) {
    selectedTab.value = text;
  }

  toggleContentBottomNavAndAppBar() {
    showContentBottomNavAndAppbar.value = !showContentBottomNavAndAppbar.value;
  }

  setBottomNavAndAppbarVisibility(bool visibility) {
    showContentBottomNavAndAppbar.value = visibility;
  }

  List<String> listData = [
    "ADD",
    "REMOVE",
    "ADD",
    "REMOVE",
    "ADD",
    "REMOVE",
    "ADD",
    "REMOVE",
    "ADD",
    "REMOVE",
    "ADD",
    "REMOVE",
    "ADD",
    "REMOVE",
    "ADD",
    "REMOVE",
  ];

  List<String> listTopic = [
    "Topic",
    "Topic",
    "Topic",
    "Topic",
    "Topic",
    "Topic",
    "Topic",
    "Topic",
    "Topic",
    "Topic",
    "Topic",
  ];
  List<Map<String, dynamic>> listContent = [
    {
      "title": "title 0",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    },
    {
      "title": "title 1",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    },
    {
      "title": "title 2",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    },
    {
      "title": "title 3",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    },
    {
      "title": "title 4",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    },
    {
      "title": "title 5",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    },
    {
      "title": "title 6",
      "content":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    },
  ];

  selectPage(int index) {
    pageController.value.animateToPage(
      index,
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
    );

    currentPageIndex.value = index;
    if (currentPageIndex.value == 0) {
      showContentBottomNavAndAppbar.value = true;
    }
  }

  feedPageScrollToTop() {
    feedPageController.value.animateToPage(
      0,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  selectContent(Map<String, dynamic> mapData) {
    selectedContent.value = mapData;
  }

  selectTopic(int index) {
    selectTab("${listTopic[index]} $index");
    selectContent(listContent[0]);
    selectPage(1);
    currentFeedPageIndex.value = 0;
  }

  void selectOption(int index) {
    selectTab(listData[index]);
    selectPage(1);
    selectContent(listContent[0]);
    currentFeedPageIndex.value = 0;
  }

  onContentPageChange(int index) async {
    currentFeedPageIndex.value = index;
    selectContent(listContent[index]);
    if (index == 0) {
      setBottomNavAndAppbarVisibility(true);
    } else {
      setBottomNavAndAppbarVisibility(false);
    }
  }

  onMainPageChange(int index) async {
    currentPageIndex.value = index;
    if (index == 2) {
      setBottomNavAndAppbarVisibility(false);
      timer?.cancel();
    } else if (index == 0) {
      setBottomNavAndAppbarVisibility(true);
      timer?.cancel();
    } else if (index == 1) {
      setBottomNavAndAppbarVisibility(true);
      forceHideBottomNavAndAppbar();
    }
  }

  Timer? timer;

  forceHideBottomNavAndAppbar() {
    timer = Timer(const Duration(seconds: 3), () {
      setBottomNavAndAppbarVisibility(false);
    });
  }
}
