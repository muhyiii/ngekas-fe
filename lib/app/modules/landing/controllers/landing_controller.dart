import 'dart:async';

import 'package:get/get.dart';
import 'package:ngekas/app/controllers/global_controller_controller.dart';
import 'package:ngekas/app/modules/login/views/login_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LandingController extends GetxController {
  final global = Get.put(GlobalControllerController());
  late SharedPreferences cloud;

  @override
  void onInit() {
    super.onInit();
    initCloud();
  }

  void initCloud() async {
    cloud = await SharedPreferences.getInstance();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void setFirst() {
    global.isFirst.value = true;
    Timer(Duration(milliseconds: 1000), () => Get.offAll(() => LoginView()));
  }
}
