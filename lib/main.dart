import 'package:cai4_swd8_g1/cubits/counter_cubit.dart';
import 'package:cai4_swd8_g1/cubits/users_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
//! DIO
//! Cubit
//! BLOC
//! Shared Pref
//! SQFLITE 

void main() {
  runApp(
    // BlocProvider(create: (context) => CounterCubit(), child: MyApp()),
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()),
        BlocProvider(create: (context) => UsersCubit()),
        // BlocProvider(create: (context) => SubjectBloc()),
      ],
      child: MyApp(),
    ),

    // MultiProvider(
    //   providers: [
    //     // ChangeNotifierProvider(create: (context) => CounterProvider()),
    //     ChangeNotifierProvider(create: (context) => ProductsProvider()),
    //   ],
    //   child: MyApp(),
    // ),

    // ChangeNotifierProvider(
    //   create: (context) => CounterProvider(),
    //   child: MyApp(),
    // ),
  );
}
