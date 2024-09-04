import 'package:get/get.dart';

import '../controllers/documents_page_controller.dart';

class DocumentsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DocumentsPageController>(
      () => DocumentsPageController(),
    );
  }
}
