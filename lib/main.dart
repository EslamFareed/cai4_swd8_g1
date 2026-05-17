import 'package:cai4_swd8_g1/app_root.dart';
import 'package:cai4_swd8_g1/hive_db/user_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
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

  await Hive.initFlutter();

  Hive.registerAdapter(UserModelAdapter());

  await Hive.openBox<UserModel>("usersBox");
  // await Hive.openBox<String>("namesBox");

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MyApp());
}

// class AppRoot extends StatelessWidget {
//   const AppRoot({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
//   }
// }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   var box = Hive.box("userBox");

//   void addData() async {
//     await box.put("name", "ahmed");
//     await box.put("age", 25);
//     await box.put("isLogin", true);
//     await box.put("children", ["ali", "sara"]);
//   }

//   void readData() async {
//     String name = box.get("name", defaultValue: "no name");
//   }

//   void deleteData() async {
//     box.delete("name");

//     box.clear();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }

//   @override
//   void dispose() {
//     box.close();
//     super.dispose();
//   }
// }
