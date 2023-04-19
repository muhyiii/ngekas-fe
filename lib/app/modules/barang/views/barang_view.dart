import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/barang_controller.dart';

class BarangView extends GetView<BarangController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BarangView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BarangView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
