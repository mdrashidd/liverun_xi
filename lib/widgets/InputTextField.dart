import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final TextEditingController controller;
  final Icon icon;
  final String hint;
  final double width;

  const InputTextField({

    required this.controller,
    required this.icon,
    required this.hint,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.black54),
        hint: Row(
          children: [
            icon,
            Text(hint),
          ],
        ),
      ),
    );
  }
}
