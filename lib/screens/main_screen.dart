// import 'package:flutter/material.dart';

// import 'calc_screen.dart';
// import 'home_screen.dart';
// import 'profile_screen.dart';
// import 'xo_screen.dart';

// // class MainScreen extends StatelessWidget {
// //   MainScreen({super.key});

// //   List<Widget> screens = [
// //     CalcScreen(),
// //     HomeScreen(),
// //     XoScreen(),
// //     ProfileScreen(),
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return DefaultTabController(
// //       length: 15,
// //       child: Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: Colors.deepOrange,
// //           foregroundColor: Colors.white,
// //           title: Text("My App"),
// //           bottom: TabBar(
// //             // isScrollable: true,
// //             labelColor: Colors.white,
// //             indicatorColor: Colors.black,
// //             // onTap: (value) {},
// //             tabs: [
// //               Tab(text: "Calcualtor"),
// //               Tab(text: "Home"),
// //               Tab(text: "XO"),
// //               Tab(text: "Profile"),
// //             ],
// //           ),
// //         ),
// //         body: TabBarView(children: screens),
// //       ),
// //     );
// //   }
// // }

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});
//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   var index = 0;
//   List<Widget> screens = [
//     CalcScreen(),
//     HomeScreen(),
//     XoScreen(),
//     ProfileScreen(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(     
//       body: screens[index],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: (newIndex) {
//           setState(() {
//             index = newIndex;
//           });
//         },
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.black,
//         // fixedColor: Colors.black,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: const Color.fromARGB(255, 91, 91, 91),
//         showUnselectedLabels: false,
//         // showSelectedLabels: false,
//         currentIndex: index,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.calculate),
//             label: "Calculator",
//             backgroundColor: Colors.black,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//             backgroundColor: Colors.black,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.gamepad),
//             label: "XO",
//             backgroundColor: Colors.black,
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Profile",
//             backgroundColor: Colors.black,
//           ),
//         ],
//       ),
//     );
//   }
// }
