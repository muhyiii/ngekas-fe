import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ngekas/app/style/style.dart';

import '../controllers/transaksi_controller.dart';

class TransaksiView extends GetView<TransaksiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue,
        shadowColor: Colors.transparent,
      ),
      body: Center(
        child: Text(
          'TransaksiView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
