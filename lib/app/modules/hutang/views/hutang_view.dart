import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/hutang_controller.dart';

class HutangView extends GetView<HutangController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HutangView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HutangView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
