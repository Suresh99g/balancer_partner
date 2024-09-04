import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:balancer_partner/app/modules/documents_page/bindings/documents_page_binding.dart';
import 'package:balancer_partner/app/modules/documents_page/views/documents_page_view.dart';
import 'package:balancer_partner/app/modules/home/bindings/home_binding.dart';
import 'package:balancer_partner/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DOCUMENTS_PAGE,
      page: () => DocumentsPageView(),
      binding: DocumentsPageBinding(),
    ),
  ];
}
