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
                MyButton(),
                TextWidget()
              ],
            )
          ),
        ),
      ),
    ),
  );
}

