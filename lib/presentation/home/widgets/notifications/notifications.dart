import 'package:flutter/widgets.dart';
import 'package:nubank_clone/utils/app_colors.dart';
import 'package:nubank_clone/utils/app_strings.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _income(context),
          _lifeSecurity(context),
          _income(context),
        ],
      ),
    );
  }

  _income(context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      margin: const EdgeInsets.fromLTRB(10, 10, 20, 0),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: AppStrings.seu,
              style: TextStyle(
                color: AppColors.text,
                fontSize: 16,
              ),
            ),
            TextSpan(
              text: AppStrings.informeDeRendimentos,
              style: TextStyle(
                color: AppColors.backgroundcolor,
                fontSize: 16,
              ),
            ),
            TextSpan(
              text: AppStrings.de2021,
              style: TextStyle(
                color: AppColors.text,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _lifeSecurity(context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      margin: const EdgeInsets.fromLTRB(10, 10, 20, 0),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: AppStrings.chegou,
              style: TextStyle(
                color: AppColors.text,
                fontSize: 16,
              ),
            ),
            TextSpan(
              text: AppStrings.debitoAutomatico,
              style: TextStyle(
                color: AppColors.backgroundcolor,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
