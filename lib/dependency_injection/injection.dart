import 'package:get/instance_manager.dart';
import 'package:tattoos/data/services/controller.dart';

class Injection {
  void loadDependencies() {
    // Inject Services
    Get.lazyPut(
      () => Controller(),
    );
  }
}
