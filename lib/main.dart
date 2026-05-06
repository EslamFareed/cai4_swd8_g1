import 'package:flutter/material.dart';
import 'app_root.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

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

//! What is Firebase ?
//! Setup + installing
//! Auth
//! Firestore

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MyApp());
}
