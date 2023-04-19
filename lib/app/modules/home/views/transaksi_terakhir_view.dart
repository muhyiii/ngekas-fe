import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ngekas/app/controllers/global_controller_controller.dart';
import 'package:ngekas/app/style/style.dart';

class TransaksiTerakhirView extends GetView {
  final global = Get.put(GlobalControllerController());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Transaksi Terakhir',
                    style: TextStyle(
                      fontFamily: 'noto_sans',
                      fontSize: global.fontSize.toDouble() - 2,
                    )),
                Text('Lihat Semua',
                    style: TextStyle(
                      fontFamily: 'noto_sans',
                      color: orange,
                      fontSize: global.fontSet.toDouble() - 2,
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CarouselSlider(
              carouselController: CarouselController(),
              options: CarouselOptions(
                  height: Get.width / 2.75,
                  scrollPhysics: BouncingScrollPhysics(),
                  autoPlayCurve: Curves.easeInOutExpo,
                  autoPlay: true,
                  enableInfiniteScroll: true),
              items: [1, 2, 3, 4, 5].map((i) {
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
                            Text('Total Transaksi',
                                style: TextStyle(
                                    fontFamily: 'noto_sans_semibold',
                                    fontSize: global.fontSet.toDouble(),
                                    color: Colors.white)),
                            Text('20',
                                style: TextStyle(
                                    fontFamily: 'noto_sans_semibold',
                                    fontSize:
                                        global.fontHeading.toDouble() + 10,
                                    color: Colors.white)),
                          ],
                        ),
                        Icon(
                          Icons.payment_rounded,
                          color: putih,
                          size: global.fontHeading.toDouble() +
                              global.fontSmall.toDouble(),
                        )
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
