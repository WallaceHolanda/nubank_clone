import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/presentation/home/widgets/account/account.dart';
import 'package:nubank_clone/presentation/home/widgets/actions/menu_itens.dart';
import 'package:nubank_clone/presentation/home/widgets/creditCards/credit_cards.dart';
import 'package:nubank_clone/presentation/home/widgets/header/header.dart';
import 'package:nubank_clone/presentation/home/widgets/notifications/notifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: const [
              Header(),
              AccountNubank(),
              MenuItens(),
              Divider(thickness: 1.2),
              CreditCards(),
              Notifications(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
    );
  }
}
