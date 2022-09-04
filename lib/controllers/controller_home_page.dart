import 'package:get/state_manager.dart';

class ControllerHomePage extends GetxController {
  String value = "R\$ 500.000,00";
  bool eyesValue = true;

  void showValue() {
    eyesValue = !eyesValue;
    update();
  }
}
