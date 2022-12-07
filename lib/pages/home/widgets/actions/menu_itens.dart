import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/pages/home/widgets/actions/widgets/menu_options_item.dart';
import 'package:nubank_clone/utils/app_strings.dart';

class MenuItens extends StatelessWidget {
  const MenuItens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          children: const [
            MenuOptionsItem(
              icon: MdiIcons.clover,
              name: AppStrings.areaPix,
              isFirst: true,
            ),
            MenuOptionsItem(
              icon: MdiIcons.barcode,
              name: AppStrings.pagar,
            ),
            MenuOptionsItem(
              icon: MdiIcons.cash,
              name: AppStrings.transferir,
            ),
            MenuOptionsItem(
              icon: MdiIcons.cash,
              name: AppStrings.depositar,
            ),
            MenuOptionsItem(
              icon: MdiIcons.creditCard,
              name: AppStrings.recarga,
            ),
            MenuOptionsItem(
              icon: MdiIcons.heartOutline,
              name: AppStrings.doacao,
            ),
          ],
        ),
      ),
    );
  }
}
