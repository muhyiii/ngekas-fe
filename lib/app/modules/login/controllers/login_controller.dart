import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngekas/app/controllers/global_controller_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final global = Get.put(GlobalControllerController());
  late SharedPreferences cloud;
  var tlp = TextEditingController();
  var password = TextEditingController();
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  void initCloud() async {
    cloud = await SharedPreferences.getInstance();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
