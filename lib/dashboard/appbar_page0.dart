import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inshorts/controller/dashboard_controller.dart';

class AppbarPage0Widget extends StatelessWidget {
  const AppbarPage0Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Material(
        color: Colors.white,
        elevation: 1,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
                    child: InkWell(
                      onTap: () {
                        controller.selectPage(0);
                      },
                      child: const Center(
                        child: Text("Discover"),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3.5,
                    child: InkWell(
                      onTap: () {
                        controller.selectPage(1);
                      },
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Text("My Feed"),
                            Icon(
                              Icons.arrow_forward_ios,
                            ),
                          ],
                        ),
                      ),
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
    });
  }
}
