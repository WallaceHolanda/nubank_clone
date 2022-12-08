import 'package:flutter/material.dart';
import 'package:nubank_clone/utils/app_colors.dart';

class MenuOptionsItem extends StatelessWidget {
  const MenuOptionsItem({
    super.key,
    required this.icon,
    required this.name,
    this.isFirst,
  });

  final IconData icon;
  final String name;
  final bool? isFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: (isFirst ?? false)
          ? const EdgeInsets.only(right: 7, left: 20)
          : const EdgeInsets.symmetric(horizontal: 7),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: AppColors.greyColor,
              borderRadius: BorderRadius.circular(48),
            ),
            child: Icon(icon),
          ),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
