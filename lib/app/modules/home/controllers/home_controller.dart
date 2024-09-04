import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedPageIndex = 0.obs;
  var selectedVehicle = 0.obs;
  final isProgressbarTapped = false.obs;
  void changePage(int index) {
    selectedPageIndex.value = index;
  }
  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {}
  // void increment() => count.value++;
}
