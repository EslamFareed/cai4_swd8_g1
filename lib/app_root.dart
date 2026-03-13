import 'package:flutter/material.dart';

import 'screens/provider_test_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProviderTestScreen(),
      // routes: {
      //   "main": (_) => MainScreen(),
      //   "respons": (_) => ResponsScreen(),
      //   "sst": (_) => StackScreen(),
      // },
      // initialRoute: "sst",
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.grey),
        ),

        scaffoldBackgroundColor: const Color.fromARGB(255, 237, 237, 237),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),

        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12),
            ),
          ),
        ),
      ),
      // home: Screen1()
    );
  }
}
