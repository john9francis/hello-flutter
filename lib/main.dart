import 'package:flutter/material.dart';
import 'text_inputs.dart';
import 'button.dart';
import 'extras.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = "GECAT";
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          centerTitle: true,
          ),
        body: const ScrollbarWrapper(form: PatientInfoForm())
      ),
    );
  }
}

class PatientInfoForm extends StatelessWidget {
  const PatientInfoForm({super.key});

  static const betweenPadding = 16.0;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(180.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextInputRow(labelText: "Height", textField: BasicTextField(hintText: "e.g. 5\"11")),
            SizedBox(height: betweenPadding),
            TextInputRow(labelText: "Weight", textField: BasicTextField(hintText: "e.g. 145")),
            SizedBox(height: betweenPadding),
            TextInputRow(labelText: "Gender", textField: BasicTextField(hintText: "e.g. M"), tooltipMsg: "Gender for the phantom",),
            SizedBox(height: betweenPadding),
            TextInputRow(labelText: "Date of radiation exposure", textField: DateField()),
            SizedBox(height: betweenPadding),
            MyButton(),
          ],
        )
      ),
    );
  }
}


// This widget contains a text label, an input field of your choice, and an optional tooltip message.
class TextInputRow extends StatelessWidget {
  final Widget textField; // This will be your text field widget
  final String labelText; // Label text for the row
  final String tooltipMsg;

  // Constructor to initialize labelText and textField
  const TextInputRow({required this.labelText, required this.textField, this.tooltipMsg="", super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Text(labelText),
              if (tooltipMsg.isNotEmpty) InfoHover(hoverMessage: tooltipMsg)
            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: textField,
        ),
      ],
    );
  }
}

