import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ngekas/app/controllers/global_controller_controller.dart';
import 'package:ngekas/app/modules/home/views/aktifitas_view.dart';
import 'package:ngekas/app/modules/home/views/transaksi_terakhir_view.dart';
import 'package:ngekas/app/style/style.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final global = Get.put(GlobalControllerController());
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          // appBar: AppBar(
          //   title: Text("Hehe Tes"),
          //   backgroundColor: blue,
          //   shadowColor: Colors.transparent,
          // ),
          body: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: Get.width / 2.5,
                    decoration: BoxDecoration(color: blue),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      height: Get.width / 3.5,
                      width: Get.width / 1.25,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total Keuntungan',
                                  style: TextStyle(
                                      fontFamily: 'noto_sans',
                                      fontSize: global.fontSet.toDouble(),
                                      color: blue)),
                              Text(
                                global.format.value
                                    .format(controller.keuntungan.value),
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: blue,
                                    fontSize: global.fontHeading.toDouble(),
                                    fontFamily: 'noto_sans_semibold'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              AktifitasView(),
              TransaksiTerakhirView()
            ],
          ),
        ));
  }
}
