import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final PageController pageController = PageController();

  int currentPageIndex = 0;

  selectPage(int index) {
    pageController.jumpToPage(index);
    currentPageIndex = index;
    update();
  }
}
