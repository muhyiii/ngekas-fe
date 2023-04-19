import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ngekas/app/controllers/global_controller_controller.dart';
import 'package:ngekas/app/style/style.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  final global = Get.put(GlobalControllerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blue,
      body: Obx((() => Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: Get.width / 1.2),
            child: AnimatedOpacity(
              curve: Curves.easeInBack,
              duration: Duration(milliseconds: 2500),
              opacity: controller.opacity.value,
              child: RichText(
                text: TextSpan(
                    text: 'nge',
                    style: TextStyle(
                        fontFamily: 'varela_round',
                        fontSize: global.fontHeading * 2,
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        shadows: [
                          Shadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: const Offset(7, 7),
                              blurRadius: 9),
                        ]),
                    children: [
                      TextSpan(
                          text: 'KAS',
                          style: TextStyle(
                              fontSize: global.fontHeading * 2,
                              fontFamily: 'fredoka-one',
                              color: Colors.yellow[400],
                              fontWeight: FontWeight.w700,
                              shadows: [
                                Shadow(
                                    color: Colors.black.withOpacity(0.3),
                                    offset: const Offset(7, 7),
                                    blurRadius: 9),
                              ]))
                    ]),
              ),
            ),
          ))),
    );
  }
}
