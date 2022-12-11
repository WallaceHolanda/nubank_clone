import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/utils/app_colors.dart';
import 'package:nubank_clone/utils/app_strings.dart';

class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _shoppingHeader(),
          const SizedBox(height: 16),
          const Text(
            AppStrings.vantagens,
            style: TextStyle(
              color: AppColors.greyText,
            ),
          ),
        ],
      ),
    );
  }

  _shoppingHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          AppStrings.shopping,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }
}
