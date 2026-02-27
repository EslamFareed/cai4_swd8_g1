   // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Text("Hello"),
        //     Icon(Icons.accessible, size: 50),
        //     Text("Flutter"),
        //     Icon(Icons.access_alarm, size: 100),
        //   ],
        // ),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Text("Hello"),
        //     Icon(Icons.abc, size: 70),
        //     Text("Flutter"),
        //     Icon(Icons.access_alarm, size: 150),
        //   ],
        // ),
        // body: Row(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text("Hello 1"),
        //     Column(
        //       children: [Text("Hello 2"), Text("Hello 3")]
        //     ),
        //     Text("Hello 4"),
        //   ],
        // ),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Text("Hello"),
        //         Text("Hello"),
        //         Text("Hello"),
        //         Text("Hello"),
        //       ],
        //     ),
        //     Text("Hello"),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [Text("Hello"), Text("Hello")],
        //     ),
        //     Text("Hello"),
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [Text("Hello"), Text("Hello"), Text("Hello")],
        //     ),
        //   ],
        // ),
      // appBar: AppBar(
        //   actions: [
        //     Icon(Icons.search, color: Colors.red, size: 14),
        //     Icon(Icons.notifications, size: 14),
        //   ],
        //   leading: Icon(Icons.arrow_back_ios, size: 14),
        //   title: Text(
        //     "Hello World",
        //     style: TextStyle(
        //       // color: Colors.white,
        //       fontSize: 24,
        //       fontWeight: FontWeight.bold,
        //       // wordSpacing: 50,
        //       // letterSpacing: 10,
        //     ),
        //   ),
        //   foregroundColor: Colors.white,
        //   backgroundColor: Colors.lightGreen,
        // ),





//! --------------------------------------------------------------

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(backgroundColor: Colors.black),
//         body: Column(
//           children: [
//             Container(
//               margin: EdgeInsets.all(24),
//               padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
//               decoration: BoxDecoration(
//                 color: Colors.red,
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Text("Hello", style: TextStyle(color: Colors.white)),
//               // padding: EdgeInsets.only(left: 8 , right: 50,top: 20,bottom: 100),
//               // padding: EdgeInsets.symmetric( vertical: 24, horizontal: 56 ),
//               // width : full avail width
//               // width: 100,
//               // alignment: Alignment.topCenter,
//             ),
//             Container(
//               width: 100,
//               height: 100,
//               decoration: BoxDecoration(
//                 color: Colors.green,
//                 borderRadius: BorderRadius.circular(16),
//               ),
//               child: Icon(Icons.account_box, color: Colors.white),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }




 // body: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       Container(
        //         margin: EdgeInsets.all(8),
        //         child: Card(
        //           color: Color.fromARGB(255, 236, 236, 236),
        //           child: ListTile(
        //             onTap: () {
        //               print('list tile pressed');
        //             },
        //             // tileColor: Color.fromARGB(255, 224, 224, 224),
        //             leading: Icon(Icons.settings),
        //             title: Text("Settings"),
        //             // subtitle: Text("Flutter Developer"),
        //             trailing: Icon(Icons.arrow_forward, size: 20),
        //           ),
        //         ),
        //       ),

        //       MaterialButton(
        //         color: Colors.deepOrange,
        //         child: Text(
        //           "Login",
        //           style: TextStyle(
        //             color: Colors.white,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //         onPressed: () {
        //           print("Material Button Pressed");
        //         },
        //       ),
        //       IconButton(
        //         onPressed: () {
        //           print("Icon Button Pressed");
        //         },
        //         icon: Icon(Icons.logout),
        //       ),

        //       CircleAvatar(
        //         radius: 50,
        //         backgroundImage: NetworkImage(
        //           "https://static.vecteezy.com/system/resources/thumbnails/057/068/323/small/single-fresh-red-strawberry-on-table-green-background-food-fruit-sweet-macro-juicy-plant-image-photo.jpg",
        //         ),
        //         // backgroundImage: AssetImage(
        //         //   "assets/images/image-optimisation-scaled.jpg",
        //         // ),
        //         //backgroundColor: Colors.deepOrange,
        //         // child: Icon(Icons.search, color: Colors.white, size: 50),
        //         // child: Text("Add"),
        //       ),
        //       Image.asset(
        //         "assets/images/image-optimisation-scaled.jpg",
        //         width: 300,
        //         height: 300,
        //         fit: BoxFit.cover,
        //       ),
        //     ],
        //   ),
        // ),
        // floatingActionButton: FloatingActionButton(
        //   backgroundColor: Colors.deepOrange,
        //   foregroundColor: Colors.white,
        //   onPressed: () {
        //     print("FAB Pressed");
        //   },
        //   child: Icon(Icons.add),
        // ),          
        
        
        // body: SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       Image.network(
        //         "https://static.vecteezy.com/system/resources/thumbnails/057/068/323/small/single-fresh-red-strawberry-on-table-green-background-food-fruit-sweet-macro-juicy-plant-image-photo.jpg",
        //         width: 300,
        //         height: 300,
        //         fit: BoxFit.contain,
        //       ),
        //       Image.asset(
        //         "assets/images/image-optimisation-scaled.jpg",
        //         width: 300,
        //         height: 300,
        //         fit: BoxFit.cover,
        //       ),
        //       Image.asset(
        //         "assets/images/image-optimisation-scaled.jpg",
        //         width: 300,
        //         height: 300,
        //         fit: BoxFit.cover,
        //       ),
        //       Image.asset(
        //         "assets/images/image-optimisation-scaled.jpg",
        //         width: 300,
        //         height: 300,
        //         fit: BoxFit.cover,
        //       ),
        //     ],
        //   ),
        // ),
      // MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: Colors.deepOrange,
    //       foregroundColor: Colors.white,
    //       title: Text("Home"),
    //       actions: [
    //         IconButton(onPressed: () {}, icon: Icon(Icons.search)),
    //         IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
    //       ],
    //     ),
    //     body: Column(
    //       children: [
    //         // ElevatedButton(
    //         //   onPressed: () {},
    //         //   style: ElevatedButton.styleFrom(
    //         //     backgroundColor: Colors.red,
    //         //     foregroundColor: Colors.white,
    //         //     shape: RoundedRectangleBorder(
    //         //       borderRadius: BorderRadius.circular(4),
    //         //     ),
    //         //     elevation: 8,
    //         //   ),
    //         //   child: Text("Elevated Button"),
    //         // ),
    //         // TextButton(
    //         //   onPressed: () {},
    //         //   style: TextButton.styleFrom(),
    //         //   child: Text("Login"),
    //         // ),
    //         // InkWell(
    //         //   child: Image.asset(
    //         //     "assets/images/image-optimisation-scaled.jpg",
    //         //     width: 100,
    //         //     height: 100,
    //         //   ),
    //         //   onTap: () {},
    //         // ),
    //         // GestureDetector(
    //         //   child: Image.asset(
    //         //     "assets/images/image-optimisation-scaled.jpg",
    //         //     width: 100,
    //         //     height: 100,
    //         //   ),
    //         //   onTap: () {
    //         //     print("Gesture Dete. Pressed");
    //         //   },
    //         // ),
    //         Container(
    //           margin: EdgeInsets.all(24),
    //           child: TextField(
    //             obscureText: true,
    //             obscuringCharacter: "a",
    //             // maxLength: 10,
    //             // minLines: 1,
    //             // maxLines: 1,
    //             // keyboardType: TextInputType.text,
    //             decoration: InputDecoration(
    //               prefixIcon: Icon(Icons.email),
    //               suffixIcon: IconButton(
    //                 onPressed: () {},
    //                 icon: Icon(Icons.visibility),
    //               ),
    //               // hintText: "Enter your email",
    //               // hintStyle: TextStyle(),
    //               labelText: "Enter your email",
    //               // labelStyle: TextStyle(),
    //               border: OutlineInputBorder(
    //                 borderRadius: BorderRadius.circular(8),
    //                 // borderSide: BorderSide(color: Colors.blue, width: 5),
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
 
 
// class HomeScreen extends StatefulWidget {
//   HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   // int counter = 0;

//   // double size = 100;

//   bool big = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.deepOrange,
//         foregroundColor: Colors.white,
//         title: Text("Login"),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           margin: EdgeInsets.all(24),
//           child: Column(
//             children: [
//               InkWell(
//                 onTap: () {
//                   setState(() {
//                     big = !big;
//                     // size = size == 100 ? 50 : 100;
//                     // if (size == 100) {
//                     //   size = 50;
//                     // } else {
//                     //   size = 100;
//                     // }
//                   });
//                 },
//                 child: Container(
//                   width: big ? 100 : 50,
//                   height: big ? 100 : 50,
//                   color: big ? Colors.red : Colors.black,
//                 ),
//               ),

//               // Text("$counter", style: TextStyle(fontSize: 40)),
//               // IconButton(
//               //   onPressed: () {
//               //     setState(() {
//               //       counter++;
//               //     });
//               //   },
//               //   icon: Icon(Icons.add),
//               // ),
//               // IconButton(
//               //   onPressed: () {
//               //     setState(() {
//               //       counter--;
//               //     });
//               //   },
//               //   icon: Icon(Icons.minimize),
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.deepOrange),
//       body: ListView.separated(
//         separatorBuilder: (_, index) {
//           if (index % 3 == 0) {
//             return Card(
//               child: Image.network(
//                 "https://img.freepik.com/free-photo/fashion-shoes-sneakers_1203-7529.jpg",
//               ),
//               // child: ListTile(title: Text("Get offer 60% on this item")),
//             );
//           } else {
//             return SizedBox();
//           }
//         },
//         itemBuilder: (_, index) {
//           return Card(
//             child: ListTile(
//               leading: Image.network(
//                 products[index].image,
//                 width: 60,
//                 height: 40,
//                 fit: BoxFit.cover,
//               ),
//               title: Text(
//                 "${products[index].name} : ${products[index].price} EGP",
//               ),
//               subtitle: Text(products[index].categpry),
//               trailing: IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.arrow_forward_ios),
//               ),
//             ),
//           );
//         },
//         itemCount: products.length,
//       ),
//       // body: SizedBox(
//       //   height: 100,
//       //   child: ListView.builder(
//       //     scrollDirection: Axis.horizontal,
//       //     itemBuilder: (_, index) {
//       //       return Container(
//       //         height: 70,
//       //         margin: EdgeInsets.only(right: 16, top: 16, bottom: 16),
//       //         padding: EdgeInsets.symmetric(horizontal: 20),
//       //         alignment: Alignment.center,
//       //         decoration: BoxDecoration(
//       //           borderRadius: BorderRadius.circular(16),
//       //           color: Colors.deepOrange,
//       //         ),
//       //         child: Text(
//       //           names[index],
//       //           style: TextStyle(
//       //             color: Colors.white,
//       //             fontWeight: FontWeight.bold,
//       //           ),
//       //         ),
//       //       );
//       //     },
//       //     itemCount: names.length,
//       //   ),
//       // ),
//     );
//   }
// }
// body: GridView.builder(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //   ),
      //   itemBuilder: (_, index) {
      //     return Card(
      //       child: Column(
      //         children: [
      //           Image.network(
      //             products[index].image,
      //             width: 60,
      //             height: 40,
      //             fit: BoxFit.cover,
      //           ),
      //           Text(products[index].name),
      //           Text(products[index].price.toString()),
      //           Text(products[index].categpry),
      //         ],
      //       ),
      //     );
      //   },
      //   itemCount: products.length,
      // ),
      // body: GridView(
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     mainAxisSpacing: 8,
      //     crossAxisSpacing: 8,
      //     childAspectRatio: 3 / 3,
      //   ),
      //   children: [
      //     Card(),
      //     Card(),
      //     Card(),
      //     Card(),
      //     Card(),
      //     Card(),
      //     Card(),
      //     Card(),
      //     Card(),
      //   ],
      // ),
    
     // Image.asset("assets/images/image-optimisation-scaled.jpg"),
              // Image.network(""),
              // if (imageFile != null)
              //   Image.file(
              //     File(imageFile!.path),
              //     width: 100,
              //     height: 100,
              //     fit: BoxFit.cover,
              //   ),

              // ElevatedButton(
              //   onPressed: () async {
              //     final picker = ImagePicker();
              //     imageFile = await picker.pickImage(
              //       source: ImageSource.gallery,
              //     );

              //     setState(() {});

              //     // if (imageFile != null) {
              //     //   setState(() {});
              //     // }
              //   },
              //   child: Text("Choose Image"),
              // ),

              // CarouselSlider.builder(
              //   itemCount: products.length,
              //   itemBuilder: (_, index, i) {
              //     return Image.network(products[index].image);
              //   },
              //   options: CarouselOptions(
              //     enlargeCenterPage: true,
              //     autoPlay: true,
              //     autoPlayInterval: Duration(milliseconds: 1),
              //     autoPlayAnimationDuration: Duration(milliseconds: 800),
              //   ),
              // ),
             