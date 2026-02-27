import 'package:cai4_swd8_g1/models/product_model.dart';
import 'package:cai4_swd8_g1/screens/product_details_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.deepOrange,
      //   foregroundColor: Colors.white,
      //   title: Text("Home"),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: products.length,
              itemBuilder: (context, index, realIndex) =>
                  Image.network(products[index].image),
              options: CarouselOptions(autoPlay: true, enlargeCenterPage: true),
            ),

            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.deepOrange),
                  ),
                  child: Text(categories[index]),
                ),
                itemCount: categories.length,
              ),
            ),

            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      "productDetails",
                      arguments: products[index],
                    );

                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (_) => ProductDetailsScreen(item: products[index]),
                    //   ),
                    // );
                  },
                  leading: Image.network(
                    products[index].image,
                    width: 40,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  title: Text(products[index].name),
                  subtitle: Text(
                    "${products[index].categpry} - ${products[index].price} ",
                  ),
                ),
              ),
              itemCount: products.length,
            ),
          ],
        ),
      ),
    );
  }
}




























// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// import '../components/input_field.dart';
// import '../models/product_model.dart';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
  
//   bool obsecured = true;

//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   GlobalKey<FormState> formKey = GlobalKey();

//   XFile? imageFile;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.deepOrange),
//       body: Padding(
//         padding: EdgeInsetsGeometry.all(20),
//         child: Form(
//           key: formKey,
//           child: Column(
//             spacing: 16,
//             children: [
//               InputField(title: "Ahmed", color: Colors.red),
//               InputField(title: "Ali", color: Colors.black),
//               InputField(title: "Omar", color: Colors.green),
//               InputField(title: "Karim", color: Colors.blue),

//               TextFormField(
//                 controller: emailController,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return "You must enter email";
//                   } else if (!value.contains("@")) {
//                     return "Please enter valid email";
//                   }
//                 },
//                 decoration: InputDecoration(
//                   labelText: "Email",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//               ),
//               TextFormField(
//                 controller: passwordController,
//                 obscureText: obsecured,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return "You must enter password";
//                   } else if (value.length < 6) {
//                     return "Password length must be more than or equal 6 chars";
//                   }
//                 },
//                 decoration: InputDecoration(
//                   suffixIcon: IconButton(
//                     onPressed: () {
//                       obsecured = !obsecured;
//                       setState(() {});
//                     },
//                     icon: Icon(Icons.visibility),
//                   ),
//                   labelText: "Password",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//               ),

//               MaterialButton(
//                 onPressed: () {
//                   if (formKey.currentState!.validate()) {
//                     final email = emailController.text;
//                     final password = passwordController.text;

//                     print(email);
//                     print(password);
//                   } else {
//                     print("ERrrrrrrorrrrr");
//                   }
//                 },
//                 color: Colors.deepOrange,
//                 textColor: Colors.white,
//                 child: Text("Login"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
