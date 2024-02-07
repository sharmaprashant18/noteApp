import 'package:flutter/material.dart';
import 'package:todoapp/UI/homepage.dart';
import 'package:get/get.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      darkTheme: ThemeData.dark(),
    );
  }
}
