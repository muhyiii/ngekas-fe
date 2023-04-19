import 'dart:async';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ngekas/app/controllers/global_controller_controller.dart';
import 'package:ngekas/app/modules/landing/views/landing_view.dart';
import 'package:ngekas/app/modules/login/views/login_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenController extends GetxController {
  final global = Get.put(GlobalControllerController());
  SharedPreferences? cloud;

  final count = 0.obs;
  var opacity = 0.0.obs;
  @override
  void onInit() {
    super.onInit();
    initCloud();
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  void initCloud() async {
    cloud = await SharedPreferences.getInstance();
  }

  @override
  void onReady() {
    super.onReady();
    opacity.value = 1.0;

    Timer(
      Duration(milliseconds: 3500),
      () => Get.off(
        () => global.isFirst == false ? LandingView() : LoginView(),
      ),
    );
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
