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
        body: const PatientInfoForm()
      ),
    );
  }
}

class PatientInfoForm extends StatelessWidget {
  const PatientInfoForm({super.key});

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
            SizedBox(height: 16),
            TextInputRow(labelText: "Weight", textField: BasicTextField(hintText: "e.g. 145")),
            SizedBox(height: 16),
            TextInputRow(labelText: "Gender", textField: BasicTextField(hintText: "e.g. M")),
            InfoHover(hoverMessage: "Enter the gender that your body type is most similar to."),
            SizedBox(height: 16),
            MyButton(),
          ],
        )
      ),
    );
  }
}


// Define a widget class that takes a TextField type and other parameters
class TextInputRow extends StatelessWidget {
  final Widget textField; // This will be your text field widget
  final String labelText; // Label text for the row

  // Constructor to initialize labelText and textField
  const TextInputRow({required this.labelText, required this.textField, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(labelText),
        ),
        Expanded(
          flex: 5,
          child: textField,
        ),
      ],
    );
  }
}

