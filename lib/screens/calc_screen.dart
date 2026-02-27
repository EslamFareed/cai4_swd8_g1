import 'package:flutter/material.dart';

class CalcScreen extends StatefulWidget {
  const CalcScreen({super.key});

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  @override
  Widget build(BuildContext context) {
    // int number1 = int.parse("12");

    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.deepOrange, title: Text("Calc")),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // SizedBox(width: 100, child: TextField()),
              // SizedBox(width: 100, child: TextField()),
              Expanded(
                flex: 3,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                flex: 2,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                flex: 2,
                child: TextField(
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 70,
                child: ElevatedButton(child: Text("+"), onPressed: () {}),
              ),
              SizedBox(
                width: 70,
                child: ElevatedButton(child: Text("-"), onPressed: () {}),
              ),
              SizedBox(
                width: 70,
                child: ElevatedButton(child: Text("/"), onPressed: () {}),
              ),
              SizedBox(
                width: 70,
                child: ElevatedButton(child: Text("*"), onPressed: () {}),
              ),
            ],
          ),

          Text("Result = "),
        ],
      ),
    );
  }
}
