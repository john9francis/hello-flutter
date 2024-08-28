import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {

  const TextWidget({super.key});

  @override
  TextState createState() => TextState();
}

class TextState extends State<TextWidget> {
  var number = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(number.toString()),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print("Hey"),
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.lightGreen[500],
        ),
        child: const Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
}