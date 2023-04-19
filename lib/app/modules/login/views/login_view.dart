import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ngekas/app/style/style.dart';
import 'package:ngekas/app/views/views/textfield_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              height: Get.width / 1.5,
              width: Get.width,
              decoration: BoxDecoration(color: blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login Page',
                    style: TextStyle(color: putih),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                TextFieldView(
                  controller: controller.tlp,
                  input: 'Nomor Telepon',
                  
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
