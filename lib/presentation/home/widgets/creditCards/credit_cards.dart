import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/controllers/controller_home_page.dart';
import 'package:nubank_clone/utils/app_colors.dart';
import 'package:nubank_clone/utils/app_strings.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.vertical,
            spacing: 12,
            children: [
              _iconCreditCard(),
              _textCreditCard(),
              _invoice(),
              _creditCardLimit(),
              _installments(),
            ],
          ),
        ],
      ),
    );
  }

  _iconCreditCard() {
    return const Icon(MdiIcons.creditCard);
  }

  _textCreditCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          AppStrings.cartaoDeCredito,
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }

  _invoice() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppStrings.faturaAtual,
          style: TextStyle(
            color: AppColors.greyT,
          ),
        ),
        const SizedBox(height: 12),
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controllerHomePage) {
              return Text(
                controllerHomePage.creditCardValue,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              );
            }),
      ],
    );
  }

  _creditCardLimit() {
    return const Text(
      AppStrings.limiteCartaoDeCredito,
      style: TextStyle(
        color: AppColors.greyT,
      ),
    );
  }

  _installments() {
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 16),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: const Text(
          AppStrings.parcelarCompras,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
