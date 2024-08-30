import 'package:flutter/material.dart';
import 'button.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(180.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter height',
                  ),
                ),
                MyTextField(hintText: 'Test')
              ],
            )
          ),
        ),
      ),
    ),
  );
}

class MyTextField extends StatelessWidget {
  final String hintText;

  // Constructor to accept hintText
  const MyTextField({required this.hintText});

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