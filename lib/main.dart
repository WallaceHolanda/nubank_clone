import 'package:flutter/material.dart';
import 'package:nubank_clone/pages/home/home_page.dart';
import 'package:nubank_clone/utils/app_strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.nomeApp,
      theme: ThemeData(primaryColor: Colors.deepPurple),
      home: HomePage(),
    );
  }
}
