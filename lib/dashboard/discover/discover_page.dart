import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts/controller/dashboard_controller.dart';
import 'package:inshorts/dashboard/discover/widgets/select_topic.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < controller.listData.length; i++)
                    SelectTopic(
                      image: "assets/images/image.png",
                      title: controller.listData[i],
                      onTap: () {
                        controller.selectOption(i);
                      },
                    ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24),
              child: Text(
                "TOPICS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            GridView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 10,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 2 / 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 3,
                ),
                itemCount: controller.listTopic.length,
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () {
                      controller.selectTopic(index);
                    },
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            "assets/images/dummy.jpeg",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "${controller.listTopic[index]} $index",
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ],
        ),
      );
    });
  }
}
