import 'package:flutter/material.dart';

class AppbarWidget extends StatefulWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 1,
      child: Container(
        padding:
        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3.5,
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.settings,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3.5,
                  child: const Center(
                    child: Text("Discover"),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3.5,
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Text("My Feed"),
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
  }
}
