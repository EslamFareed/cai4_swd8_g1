import 'package:flutter/material.dart';

class ResponsScreen extends StatelessWidget {
  const ResponsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).orientation);
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).textScaler.textScaleFactor);

    final width = MediaQuery.of(context).size.width;
    final height =
        MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    final orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.portrait) {
      return Scaffold(
        // appBar: AppBar(),
        body: SafeArea(
          child: Column(
            children: [
              // 20 %
              Row(
                children: [
                  Container(
                    width: width * 0.5,
                    height: height * 0.3,
                    color: Colors.black,
                  ),
                  Container(
                    width: width * 0.5,
                    height: height * 0.3,
                    color: Colors.yellow,
                  ),
                ],
              ),
              // 40 %
              Container(
                width: width,
                height: height * 0.4,
                color: Colors.orange,
              ),
              // 30 %
              Row(
                children: [
                  Container(
                    width: width * 0.5,
                    height: height * 0.3,
                    color: Colors.black,
                  ),
                  Container(
                    width: width * 0.5,
                    height: height * 0.3,
                    color: Colors.yellow,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  width: width * 0.3,
                  height: height * 0.3,
                  color: Colors.black,
                ),
                Container(
                  width: width * 0.3,
                  height: height * 0.3,
                  color: Colors.yellow,
                ),
                Container(
                  width: width * .4,
                  height: height * 0.4,
                  color: Colors.orange,
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: width * 0.3,
                  height: height * 0.3,
                  color: Colors.blue,
                ),
                Container(
                  width: width * 0.3,
                  height: height * 0.3,
                  color: Colors.grey,
                ),
                Container(
                  width: width * .4,
                  height: height * 0.4,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
