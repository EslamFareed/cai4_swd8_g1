import 'package:flutter/material.dart';

class XoScreen extends StatefulWidget {
  const XoScreen({super.key});

  @override
  State<XoScreen> createState() => _XoScreenState();
}

class _XoScreenState extends State<XoScreen> {
  List<String> board = List.generate(50, (index) => "");

  bool turnX = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.deepOrange,
      //   foregroundColor: Colors.white,
      //   title: Text("XO Game"),
      // ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Turn ${turnX ? "X" : "O"}"),
            IconButton(
              onPressed: () {
                board = ["", "", "", "", "", "", "", "", ""];
                turnX = true;
                setState(() {});
              },
              icon: Icon(Icons.restart_alt),
            ),

            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: board.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    if (board[index].isEmpty) {
                      // Turn
                      board[index] = turnX ? "X" : "O";

                      // After Turn End
                      turnX = !turnX;
                      setState(() {});
                    }
                  },
                  child: Card(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(board[index], style: TextStyle(fontSize: 50)),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
