import 'package:get/get.dart';
import 'package:intl/intl.dart';

class GlobalControllerController extends GetxController {
  //TODO: Implement GlobalControllerController
  final fontHeading = 27.0.obs;
  final fontSize = 18.0.obs;
  final fontSet = 13.0.obs;
  final fontSmall = 10.0.obs;
  final format =
      NumberFormat.currency(locale: 'ID', symbol: 'Rp ', decimalDigits: 0).obs;

  final isFirst = false.obs;
  @override
  void onInit() {
    super.onInit();
    if (Get.width <= 360) {
      fontHeading.value = 27.0;
      fontSize.value = 18.0;
      fontSet.value = 13.0;
      fontSmall.value = 10;
    } else if (Get.width > 360 && Get.width <= 720) {
      fontHeading.value = 30.0;
      fontSize.value = 21.0;
      fontSet.value = 16.0;
      fontSmall.value = 13.0;
    } else {
      fontHeading.value = 33.0;
      fontSize.value = 24.0;
      fontSet.value = 19.0;
      fontSmall.value = 16.0;
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
