import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/pages/home/widgets/actions/widgets/menu_options_item.dart';

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
              name: 'Área Pix',
              isFirst: true,
            ),
            MenuOptionsItem(
              icon: MdiIcons.barcode,
              name: 'Pagar',
            ),
            MenuOptionsItem(
              icon: MdiIcons.cash,
              name: 'Transferir',
            ),
            MenuOptionsItem(
              icon: MdiIcons.cash,
              name: 'Depositar',
            ),
            MenuOptionsItem(
              icon: MdiIcons.creditCard,
              name: 'Recarga',
            ),
            MenuOptionsItem(
              icon: MdiIcons.heartOutline,
              name: 'Doação',
            ),
          ],
        ),
      ),
    );
  }
}
