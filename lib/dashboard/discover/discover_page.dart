import 'package:flutter/material.dart';
import 'package:inshorts/dashboard/discover/widgets/select_topic.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                SelectTopic(
                  image: "assets/images/image.png",
                  title: "Add",
                ),
                SelectTopic(
                  image: "assets/images/image.png",
                  title: "Remove",
                ),
                SelectTopic(
                  image: "assets/images/image.png",
                  title: "Add",
                ),
                SelectTopic(
                  image: "assets/images/image.png",
                  title: "Remove",
                ),
                SelectTopic(
                  image: "assets/images/image.png",
                  title: "Add",
                ),
                SelectTopic(
                  image: "assets/images/image.png",
                  title: "Remove",
                ),
                SelectTopic(
                  image: "assets/images/image.png",
                  title: "Add",
                ),
                SelectTopic(
                  image: "assets/images/image.png",
                  title: "Remove",
                ),
                SelectTopic(
                  image: "assets/images/image.png",
                  title: "Add",
                ),
                SelectTopic(
                  image: "assets/images/image.png",
                  title: "Remove",
                ),
                SelectTopic(
                  image: "assets/images/image.png",
                  title: "Add",
                ),
                SelectTopic(
                  image: "assets/images/image.png",
                  title: "Remove",
                ),
                SelectTopic(
                  image: "assets/images/image.png",
                  title: "Add",
                ),
                SelectTopic(
                  image: "assets/images/image.png",
                  title: "Remove",
                ),
                SelectTopic(
                  image: "assets/images/image.png",
                  title: "Add",
                ),
                SelectTopic(
                  image: "assets/images/image.png",
                  title: "Remove",
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
              padding: EdgeInsets.symmetric(
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
              itemCount: 10,
              itemBuilder: (BuildContext context, index) {
                return Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/images/dummy.jpeg",
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Russia-Ukraine Conflict",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                );
              }),
        ],
      ),
    );
  }
}
