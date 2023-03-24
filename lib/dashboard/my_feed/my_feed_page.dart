import 'package:flutter/material.dart';

class MyFeedPage extends StatelessWidget {
  const MyFeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
            const Padding(
              padding: EdgeInsets.only(
                left: 24,
                right: 24,
                top: 10,
                bottom: 10,
              ),
              child: Text(
                "Asheesh  Boyapati strikes gold for upcoming World Poker Tour 2023: Adda52",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 24,
                right: 24,
                bottom: 10,
              ),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
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
      ),
      bottomNavigationBar: Column(
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
      ),
    );
  }
}
