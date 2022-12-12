import 'package:get/state_manager.dart';

class ControllerHomePage extends GetxController {
  String saldo = "R\$ 520.000,00";
  bool eyesValue = true;
  String creditCardValue = 'R\$ 48604,00';

  void showValue() {
    eyesValue = !eyesValue;
    update();
  }
}
