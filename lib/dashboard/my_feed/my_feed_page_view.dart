import 'package:flutter/material.dart';
import 'package:inshorts/dashboard/my_feed/my_feed_page.dart';

class MyFeedPageView extends StatelessWidget {
  const MyFeedPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: const [
        MyFeedPage(),
        MyFeedPage(),
        MyFeedPage(),
        MyFeedPage(),
        MyFeedPage(),
        MyFeedPage(),
        MyFeedPage(),
        MyFeedPage(),
        MyFeedPage(),
        MyFeedPage(),
        MyFeedPage(),
        MyFeedPage(),
        MyFeedPage(),
        MyFeedPage(),
        MyFeedPage(),
      ],
    );
  }
}
