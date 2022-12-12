import 'package:flutter/material.dart';
import 'package:nubank_clone/presentation/home/widgets/findOutMore/models/card_find_out_more.dart';
import 'package:nubank_clone/utils/app_images.dart';
import 'package:nubank_clone/utils/app_strings.dart';

class FindOutMore extends StatelessWidget {
  const FindOutMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            AppStrings.descubraMais,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          _findOutCards(),
        ],
      ),
    );
  }

  _findOutCards() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          CardFindOutMore(
            image: AppImages.parceleCompras,
            title: AppStrings.parceleCompras,
            description: AppStrings.suaLiberdade,
            buttonText: AppStrings.conhecer,
          ),
          SizedBox(width: 20),
          CardFindOutMore(
            image: AppImages.portabilidade,
            title: AppStrings.parceleCompras,
            description: AppStrings.suaLiberdade,
            buttonText: AppStrings.conhecer,
          ),
          SizedBox(width: 20),
          CardFindOutMore(
            image: AppImages.parceleCompras,
            title: AppStrings.portabilidadeDeSalario,
            description: AppStrings.suaLiberdade,
            buttonText: AppStrings.conhecer,
          ),
        ],
      ),
    );
  }
}
