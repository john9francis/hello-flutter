import 'package:flutter/material.dart';

class BasicTextField extends StatelessWidget {
  final String hintText;

  // Constructor to accept hintText
  const BasicTextField({required this.hintText, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText, // Use the hintText passed to the constructor
      ),
    );
  }
}