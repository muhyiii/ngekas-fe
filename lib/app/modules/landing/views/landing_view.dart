import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ngekas/app/controllers/global_controller_controller.dart';
import 'package:ngekas/app/style/style.dart';

import '../controllers/landing_controller.dart';

class LandingView extends GetView<LandingController> {
  final global = Get.put(GlobalControllerController());
  final controller = Get.put(LandingController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: Get.width,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: Get.width - Get.width * 1 / 7,
                      width: Get.width,
                      decoration: BoxDecoration(
                          color: blue,
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(120))),
                    ),
                  ),
                  Positioned(
                    top: Get.width - Get.width * 1 / 3,
                    child: Container(
                      height: 125,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey[100], shape: BoxShape.circle),
                      padding: EdgeInsets.all(35),
                      child: Center(
                        child: Image.asset(
                          'assets/images/logo.png',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Get.width / 20,
            ),
            Text('ngeKAS',
                style: TextStyle(
                  fontSize: global.fontSize.value * 2,
                  fontFamily: 'fredoka_medium',
                  color: blue,
                )),
            SizedBox(
              height: Get.width / 20,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Sebuah Aplikasi untuk mengatur urusan keuangan anda dalam sistem toko atau outlet yang anda kelola',
                style: TextStyle(fontFamily: 'noto_sans_medium'),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: Get.width / 5,
            ),
            GestureDetector(
              onTap: () => controller.setFirst(),
              child: Container(
                alignment: Alignment.center,
                width: Get.width / 2,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50), color: blue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'AYO MULAI',
                      style: TextStyle(
                          color: putih, fontFamily: 'noto_sans_medium'),
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                      color: putih,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
