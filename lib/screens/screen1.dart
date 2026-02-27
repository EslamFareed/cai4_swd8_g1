import 'package:cai4_swd8_g1/screens/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key});

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        title: Text("Screen 1"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(controller: controller),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "screen2",
                  arguments: controller.text,
                );
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (_) => Screen2()),
                // );
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (_) => Screen2(name: controller.text),
                //   ),
                // );
              },
              child: Text("Go To Screen 2"),
            ),
          ],
        ),
      ),
    );
  }
}
