// import 'package:cai4_swd8_g1/models/product_model.dart';
// import 'package:cai4_swd8_g1/screens/product_details_screen.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});

//   GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       // drawer: Container(width: 100, height: 100, color: Colors.white),
//       drawer: Drawer(
//         child: Column(
//           children: [
//             UserAccountsDrawerHeader(
//               accountName: Text("Ahmed"),
//               accountEmail: Text("ahmed@gmail.com"),
//               currentAccountPicture: CircleAvatar(
//                 backgroundImage: AssetImage(
//                   "assets/images/image-optimisation-scaled.jpg",
//                 ),
//               ),
//             ),
//             Expanded(
//               child: ListView(
//                 children: [
//                   ListTile(leading: Icon(Icons.home), title: Text("Home")),
//                   ListTile(leading: Icon(Icons.person), title: Text("Profile")),
//                   ListTile(
//                     leading: Icon(Icons.settings),
//                     title: Text("Settings"),
//                   ),
//                 ],
//               ),
//             ),

//             Divider(),

//             ListTile(leading: Icon(Icons.logout), title: Text("Logout")),
//           ],
//         ),
//       ),
//       // endDrawer: Drawer(),
//       appBar: AppBar(
//         title: Text("Home"),
//         leading: IconButton(
//           onPressed: () {
//             scaffoldKey.currentState?.openDrawer();
//             // scaffoldKey.currentState?.openEndDrawer();
//             // Scaffold.of(context).openDrawer();
//           },
//           icon: Icon(Icons.menu_open),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             CarouselSlider.builder(
//               itemCount: products.length,
//               itemBuilder: (context, index, realIndex) =>
//                   Image.network(products[index].image),
//               options: CarouselOptions(autoPlay: true, enlargeCenterPage: true),
//             ),

//             Row(
//               children: [
//                 Text(
//                   "Categories",
//                   style: Theme.of(context).textTheme.titleLarge,
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 50,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) => Container(
//                   alignment: Alignment.center,
//                   padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//                   margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     border: Border.all(color: Colors.deepOrange),
//                   ),
//                   child: Text(
//                     categories[index],
//                     style: Theme.of(context).textTheme.bodyMedium,
//                   ),
//                 ),
//                 itemCount: categories.length,
//               ),
//             ),

//             Row(
//               children: [
//                 Text("Products", style: Theme.of(context).textTheme.titleLarge),
//               ],
//             ),
//             ListView.builder(
//               physics: NeverScrollableScrollPhysics(),
//               shrinkWrap: true,
//               itemBuilder: (context, index) => Card(
//                 child: ListTile(
//                   onTap: () {
//                     Navigator.pushNamed(
//                       context,
//                       "productDetails",
//                       arguments: products[index],
//                     );

//                     // Navigator.push(
//                     //   context,
//                     //   MaterialPageRoute(
//                     //     builder: (_) => ProductDetailsScreen(item: products[index]),
//                     //   ),
//                     // );
//                   },
//                   leading: Image.network(
//                     products[index].image,
//                     width: 40,
//                     height: 60,
//                     fit: BoxFit.cover,
//                   ),
//                   title: Text(
//                     products[index].name,
//                     style: Theme.of(context).textTheme.bodyMedium,
//                   ),
//                   subtitle: Text(
//                     "${products[index].categpry} - ${products[index].price} ",
//                     style: Theme.of(context).textTheme.bodyMedium,
//                   ),
//                 ),
//               ),
//               itemCount: products.length,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




























// // import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';

// // import '../components/input_field.dart';
// // import '../models/product_model.dart';

// // class HomeScreen extends StatefulWidget {
// //   HomeScreen({super.key});

// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }

// // class _HomeScreenState extends State<HomeScreen> {
  
// //   bool obsecured = true;

// //   TextEditingController emailController = TextEditingController();
// //   TextEditingController passwordController = TextEditingController();

// //   GlobalKey<FormState> formKey = GlobalKey();

// //   XFile? imageFile;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(backgroundColor: Colors.deepOrange),
// //       body: Padding(
// //         padding: EdgeInsetsGeometry.all(20),
// //         child: Form(
// //           key: formKey,
// //           child: Column(
// //             spacing: 16,
// //             children: [
// //               InputField(title: "Ahmed", color: Colors.red),
// //               InputField(title: "Ali", color: Colors.black),
// //               InputField(title: "Omar", color: Colors.green),
// //               InputField(title: "Karim", color: Colors.blue),

// //               TextFormField(
// //                 controller: emailController,
// //                 validator: (value) {
// //                   if (value == null || value.isEmpty) {
// //                     return "You must enter email";
// //                   } else if (!value.contains("@")) {
// //                     return "Please enter valid email";
// //                   }
// //                 },
// //                 decoration: InputDecoration(
// //                   labelText: "Email",
// //                   border: OutlineInputBorder(
// //                     borderRadius: BorderRadius.circular(8),
// //                   ),
// //                 ),
// //               ),
// //               TextFormField(
// //                 controller: passwordController,
// //                 obscureText: obsecured,
// //                 validator: (value) {
// //                   if (value == null || value.isEmpty) {
// //                     return "You must enter password";
// //                   } else if (value.length < 6) {
// //                     return "Password length must be more than or equal 6 chars";
// //                   }
// //                 },
// //                 decoration: InputDecoration(
// //                   suffixIcon: IconButton(
// //                     onPressed: () {
// //                       obsecured = !obsecured;
// //                       setState(() {});
// //                     },
// //                     icon: Icon(Icons.visibility),
// //                   ),
// //                   labelText: "Password",
// //                   border: OutlineInputBorder(
// //                     borderRadius: BorderRadius.circular(8),
// //                   ),
// //                 ),
// //               ),

// //               MaterialButton(
// //                 onPressed: () {
// //                   if (formKey.currentState!.validate()) {
// //                     final email = emailController.text;
// //                     final password = passwordController.text;

// //                     print(email);
// //                     print(password);
// //                   } else {
// //                     print("ERrrrrrrorrrrr");
// //                   }
// //                 },
// //                 color: Colors.deepOrange,
// //                 textColor: Colors.white,
// //                 child: Text("Login"),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
