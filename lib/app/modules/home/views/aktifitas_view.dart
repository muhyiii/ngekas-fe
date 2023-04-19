import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ngekas/app/controllers/global_controller_controller.dart';
import 'package:ngekas/app/modules/home/controllers/home_controller.dart';
import 'package:ngekas/app/style/style.dart';

class AktifitasView extends GetView<HomeController> {
  final global = Get.put(GlobalControllerController());
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        color: Colors.transparent,
        margin: EdgeInsets.only(top: 15),
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Status Aktifitas',
                style: TextStyle(
                  fontFamily: 'noto_sans',
                  fontSize: global.fontSize.toDouble() - 2,
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                carouselController: CarouselController(),
                options: CarouselOptions(
                    height: Get.width / 2.75,
                    scrollPhysics: BouncingScrollPhysics(),
                    autoPlayCurve: Curves.easeInOutExpo,
                    viewportFraction: 0.8,
                    scrollDirection: Axis.vertical,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true),
                items: [
                  card('Total Transaksi', 10, Icons.payment_rounded),
                  card('Barang Terjual', 42, Icons.task_alt_rounded),
                  card('Total Jenis Barang', 5, Icons.card_travel_rounded),
                  card('Barang Tersisa', 120, Icons.apps_rounded)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget card(String title, int jumlah, IconData icon) {
    return Card(
      color: orange,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,
                    style: TextStyle(
                        fontFamily: 'noto_sans_semibold',
                        fontSize: global.fontSet.toDouble(),
                        color: Colors.white)),
                Text("$jumlah",
                    style: TextStyle(
                        fontFamily: 'noto_sans_semibold',
                        fontSize: global.fontHeading.toDouble() + 10,
                        color: Colors.white)),
              ],
            ),
            Icon(
              icon,
              color: putih,
              size: global.fontHeading.toDouble() + global.fontSmall.toDouble(),
            )
          ],
        ),
      ),
    );
  }
}
