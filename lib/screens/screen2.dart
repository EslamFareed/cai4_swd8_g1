import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});
  // const Screen2({super.key, required this.name});
  // final String name;

  @override
  Widget build(BuildContext context) {
    String name = (ModalRoute.of(context)!.settings.arguments) as String;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        title: Text("Welcome $name"),
        leading: Navigator.canPop(context)
            ? IconButton(
                onPressed: () {
                  // if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                  // }
                },
                icon: Icon(Icons.arrow_back_ios),
              )
            : null,
      ),
    );
  }
}
