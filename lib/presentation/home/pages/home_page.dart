import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nubank_clone/presentation/home/widgets/account/account.dart';
import 'package:nubank_clone/presentation/home/widgets/actions/menu_itens.dart';
import 'package:nubank_clone/presentation/home/widgets/header/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
            children: const [
              Header(),
              AccountNubank(),
              MenuItens(),
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
