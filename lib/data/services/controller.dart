import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Controller extends GetxController {
  final Rx<String> language = 'en'.obs;
  final Rx<String> mapStyle = ''.obs;
  final Rx<int> indexMenu = 0.obs;
}
