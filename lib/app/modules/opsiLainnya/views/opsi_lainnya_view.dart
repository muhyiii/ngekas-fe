import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/opsi_lainnya_controller.dart';

class OpsiLainnyaView extends GetView<OpsiLainnyaController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OpsiLainnyaView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OpsiLainnyaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
