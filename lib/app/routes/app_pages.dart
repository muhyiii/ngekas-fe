import 'package:get/get.dart';

import '../modules/barang/bindings/barang_binding.dart';
import '../modules/barang/views/barang_view.dart';
import '../modules/bottomBar/bindings/bottom_bar_binding.dart';
import '../modules/bottomBar/views/bottom_bar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/hutang/bindings/hutang_binding.dart';
import '../modules/hutang/views/hutang_view.dart';
import '../modules/landing/bindings/landing_binding.dart';
import '../modules/landing/views/landing_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/opsiLainnya/bindings/opsi_lainnya_binding.dart';
import '../modules/opsiLainnya/views/opsi_lainnya_view.dart';
import '../modules/splashScreen/bindings/splash_screen_binding.dart';
import '../modules/splashScreen/views/splash_screen_view.dart';
import '../modules/transaksi/bindings/transaksi_binding.dart';
import '../modules/transaksi/views/transaksi_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_BAR,
      page: () => BottomBarView(),
      binding: BottomBarBinding(),
    ),
    GetPage(
      name: _Paths.TRANSAKSI,
      page: () => TransaksiView(),
      binding: TransaksiBinding(),
    ),
    GetPage(
      name: _Paths.BARANG,
      page: () => BarangView(),
      binding: BarangBinding(),
    ),
    GetPage(
      name: _Paths.HUTANG,
      page: () => HutangView(),
      binding: HutangBinding(),
    ),
    GetPage(
      name: _Paths.OPSI_LAINNYA,
      page: () => OpsiLainnyaView(),
      binding: OpsiLainnyaBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.LANDING,
      page: () =>  LandingView(),
      binding: LandingBinding(),
    ),
  ];
}
