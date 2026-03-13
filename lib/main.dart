import 'package:cai4_swd8_g1/providers/counter_provider.dart';
import 'package:cai4_swd8_g1/providers/products_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_root.dart';

//? Old Sessions
//! MaterialApp
//! Scaffold
//! AppBar
//! Text
//! Icon
//! Column
//! Row
//! Container
//! Image.asset -> // jpg , jpeg , png
//! Image.network
//! SingleChildScrollView
//! Circle Avatar
//! Listtile
//! Card
//! Buttons
//! Material
//! Icon
//! FAB
//! Buttons -> Elevated - Text - InkWell - GestureDetector
//! TextField
//! Stateless
//! Sized Box
//! Statefull
//! Set state
//! Data with UI
//! ListView ( Builder - seperator )
//! GridView
//! Padding
//! Text Field Controller
//! TextFormField + Form
//! Packages + Plugins
//! Carousel slider
//! Image Picker
//! Components
//! Calculater
//! XO Game
//! Expanded + Flex
//! Stop Scrolling for Widget
//! Navigation ( Widget )
//! Navigation ( Routes )
//! Bottom Navigation
//! TapBar
//! Theme + ThemeData
//! Theme using Text Styles
//! Media Query ( Size - Orientation )
//! Drawer
//! Stack
//! Time And Date Picker

//! State Management
//! Provider

void main() {
  runApp(
    MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (context) => CounterProvider()),
        ChangeNotifierProvider(create: (context) => ProductsProvider()),
      ],
      child: MyApp(),
    ),

    // ChangeNotifierProvider(
    //   create: (context) => CounterProvider(),
    //   child: MyApp(),
    // ),
  );
}
