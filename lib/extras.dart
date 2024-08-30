import 'package:flutter/material.dart';

class InfoHover extends StatelessWidget {
  const InfoHover({required this.hoverMessage, super.key});

  final String hoverMessage;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: hoverMessage,
      child: const Icon(
        Icons.info_outline,
        color: Colors.blue,
      )
    );
  }
}
