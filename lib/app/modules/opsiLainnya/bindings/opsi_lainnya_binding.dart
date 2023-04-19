import 'package:get/get.dart';

import '../controllers/opsi_lainnya_controller.dart';

class OpsiLainnyaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OpsiLainnyaController>(
      () => OpsiLainnyaController(),
    );
  }
}
