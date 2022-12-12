import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/utils/app_colors.dart';
import 'package:nubank_clone/utils/app_strings.dart';

class SecurityLife extends StatelessWidget {
  const SecurityLife({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        direction: Axis.vertical,
        spacing: 12,
        children: [
          _securityLifeHeader(),
          _securityLifeButton(context),
        ],
      ),
    );
  }

  _securityLifeHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          AppStrings.seguros,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Text(
          AppStrings.protecaoParaVoce,
          style: TextStyle(
            color: AppColors.greyText,
          ),
        ),
      ],
    );
  }

  _securityLifeButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      margin: const EdgeInsets.only(bottom: 12, right: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Icon(MdiIcons.heartOutline),
              SizedBox(width: 12),
              Text(
                AppStrings.seguroDeVida,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Text(
            AppStrings.conhecer,
            style: TextStyle(
              color: AppColors.backgroundcolor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
