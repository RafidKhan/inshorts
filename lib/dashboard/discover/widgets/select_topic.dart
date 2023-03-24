import 'package:flutter/material.dart';

class SelectTopic extends StatelessWidget {
  final String image;
  final String title;

  const SelectTopic({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 24,
        bottom: 20,
        top: 20
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 40,
            width: 40,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(title),
        ],
      ),
    );
  }
}
