import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ngekas/app/modules/barang/views/barang_view.dart';
import 'package:ngekas/app/modules/home/views/home_view.dart';
import 'package:ngekas/app/modules/hutang/views/hutang_view.dart';
import 'package:ngekas/app/modules/opsiLainnya/views/opsi_lainnya_view.dart';
import 'package:ngekas/app/modules/transaksi/views/transaksi_view.dart';
import 'package:ngekas/app/style/style.dart';

import '../controllers/bottom_bar_controller.dart';

// class BottomBarView extends GetView<BottomBarController> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('BottomBarView'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Text(
//           'BottomBarView is working',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }

class BottomBarView extends StatelessWidget {
  final controller = Get.put(BottomBarController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(
      builder: (control) {
        return Scaffold(
          body: SafeArea(
            child: AnimatedSwitcher(
              transitionBuilder: AnimatedSwitcher.defaultTransitionBuilder,
              duration: Duration(seconds: 1),
              child: IndexedStack(
                index: controller.tabIndex,
                children: [
                  HomeView(),
                  TransaksiView(),
                  BarangView(),
                  HutangView(),
                  OpsiLainnyaView()
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedIconTheme: IconThemeData(size: 30),
            iconSize: 20,
            unselectedItemColor: Colors.blueGrey,
            selectedItemColor: blue,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: Icons.home,
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: Icons.task_rounded,
                label: 'Transaksi',
              ),
              _bottomNavigationBarItem(
                icon: Icons.add_box_rounded,
                label: 'Barang',
              ),
              _bottomNavigationBarItem(
                icon: Icons.account_balance_wallet_rounded,
                label: 'Hutang',
              ),
              _bottomNavigationBarItem(
                icon: Icons.person,
                label: 'Opsi Lain',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({IconData? icon, String? label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
