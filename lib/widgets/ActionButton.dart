import 'package:flutter/material.dart';

class ActionButton extends StatefulWidget {
  final function;
  final String title;
  const ActionButton({super.key, this.function, required this.title});

  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {},
      child: Text("Title"),
    );
  }
}
