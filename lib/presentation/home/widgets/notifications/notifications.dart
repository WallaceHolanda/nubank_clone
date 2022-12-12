import 'package:flutter/widgets.dart';
import 'package:nubank_clone/utils/app_colors.dart';
import 'package:nubank_clone/utils/app_strings.dart';

class NotificationText {
  final String text;
  final bool? isSecondaryColor;

  NotificationText({
    required this.text,
    this.isSecondaryColor,
  });
}

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _notificationCard(
            context,
            <NotificationText>[
              NotificationText(text: AppStrings.seu),
              NotificationText(
                text: AppStrings.informeDeRendimentos,
                isSecondaryColor: true,
              ),
              NotificationText(text: AppStrings.de2021),
            ],
          ),
          _notificationCard(
            context,
            <NotificationText>[
              NotificationText(text: AppStrings.chegou),
              NotificationText(
                text: AppStrings.debitoAutomatico,
                isSecondaryColor: true,
              ),
            ],
          ),
        ],
      ),
    );
  }

  _notificationCard(
    context,
    List<NotificationText> stringsList,
  ) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      margin: const EdgeInsets.fromLTRB(10, 10, 20, 0),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.greyColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            for (final element in stringsList)
              TextSpan(
                text: element.text,
                style: TextStyle(
                  color: element.isSecondaryColor ?? false
                      ? AppColors.backgroundcolor
                      : AppColors.text,
                  fontSize: 16,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
