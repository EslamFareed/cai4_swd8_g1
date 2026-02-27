import 'package:cai4_swd8_g1/screens/main_screen.dart';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {"main": (_) => MainScreen()},
      initialRoute: "main",
      // home: Screen1()
    );
  }
}
