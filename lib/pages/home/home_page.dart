import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/pages/account/account.dart';
import 'package:nubank_clone/pages/actions/menu_itens.dart';
import 'package:nubank_clone/pages/home/widgets/header.dart';
import 'package:nubank_clone/utils/colors_standart.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: backgroundcolor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Header(),
              AccountNubank(),
              const MenuItens(),
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
