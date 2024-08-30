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

class ScrollbarWrapper extends StatefulWidget {
  final Widget form; // the form that's inside the scrollbar

  const ScrollbarWrapper({super.key, required this.form});

  @override
  State<ScrollbarWrapper> createState() => _ScrollbarWrapperState();
}

class _ScrollbarWrapperState extends State<ScrollbarWrapper> {
  final ScrollController _controllerOne = ScrollController();

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      controller: _controllerOne,
      thumbVisibility: true,
      child: SingleChildScrollView(
        controller: _controllerOne,
        child: widget.form,
      )
    );
  }
}