import 'package:flutter/material.dart';

// class InputField extends StatelessWidget {
//   const InputField({super.key, required this.title, required this.color});

//   final String title;
//   final Color color;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//         child: Text(
//           title,
//           style: TextStyle(
//             color: color,
//             fontSize: 30,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

class InputField extends StatefulWidget {
  const InputField({super.key, required this.color, required this.title});

  final String title;
  final Color color;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style: TextStyle(
        color: widget.color,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
