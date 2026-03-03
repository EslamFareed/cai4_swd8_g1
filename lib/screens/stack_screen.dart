import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Column(
        children: [
          CarouselSlider.builder(
            itemCount: products.length,
            itemBuilder: (context, index, realIndex) =>
                Image.network(products[index].image),
            options: CarouselOptions(autoPlay: true, enlargeCenterPage: true),
          ),

          Stack(
            children: [
              // IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.shopping_cart, size: 40),
              // ),
              CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/image-optimisation-scaled.jpg",
                ),
                radius: 50,
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.camera, size: 20),
                  // child: Text(
                  //   "3",
                  //   style: TextStyle(color: Colors.white, fontSize: 12),
                  // ),
                ),
              ),
            ],
          ),

          ElevatedButton(
            onPressed: () async {
              var selectedTime = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
              );

              if (selectedTime == null) {
                print("User Cancelled");
              } else {
                print(selectedTime);
              }
            },
            child: Text("Pick Time"),
          ),
          ElevatedButton(
            onPressed: () async {
              var selectedDate = await showDatePicker(
                context: context,
                firstDate: DateTime(2020),
                lastDate: DateTime(2030),
              );

              if (selectedDate == null) {
                print("User Cancelled");
              } else {
                print(selectedDate);
              }
            },
            child: Text("Pick Date"),
          ),
          ElevatedButton(
            onPressed: () async {
              var selectedDateRange = await showDateRangePicker(
                context: context,
                firstDate: DateTime(2020),
                lastDate: DateTime(2030),
              );

              if (selectedDateRange == null) {
                print("User Cancelled");
              } else {
                print(selectedDateRange.start);
                print(selectedDateRange.end);
              }
            },
            child: Text("Pick Date Range"),
          ),
        ],
      ),

      // body: Container(
      //   // width: 350,
      //   // height: 350,
      //   color: Colors.black,
      //   child: Stack(
      //     // alignment: AlignmentGeometry.bottomRight,
      //     children: [
      //       Container(width: 300, height: 300, color: Colors.red),
      //       Container(
      //         width: 200,
      //         height: 200,
      //         color: Colors.yellow,
      //         // alignment: Alignment.center,
      //       ),
      //       Align(
      //         alignment: Alignment.centerRight,
      //         child: Container(
      //           width: 100,
      //           height: 100,
      //           color: Colors.blue,
      //           // alignment: Alignment.center,
      //         ),
      //       ),
      //       Positioned(
      //         top: 200,
      //         left: 0,
      //         // right: 0,
      //         // bottom: 0,
      //         child: Container(
      //           width: 100,
      //           height: 100,
      //           color: Colors.blue,
      //           // alignment: Alignment.center,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
