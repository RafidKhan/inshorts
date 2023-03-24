import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts/controller/dashboard_controller.dart';

class ContentPage extends GetView<DashboardController> {
  const ContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/lanscape.jpeg',
            height: 250,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 10,
              bottom: 10,
            ),
            child: Text(
              controller.selectedContent.value['title'],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
              bottom: 10,
            ),
            child: Text(
              controller.selectedContent.value['content'],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 24, right: 24, bottom: 10),
            child: Text(
              "powered by Adda52",
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
