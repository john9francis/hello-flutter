import 'package:flutter/material.dart';
import 'text_inputs.dart';

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
            Row(
              children: [
                Flexible(flex: 1, child: Text('Enter Height:')),
                Flexible(flex: 3, child: BasicTextField(hintText: '5"11'))
              ],
            ),
            Row(
              children: [
                Expanded(child: Text('Enter Weight:')),
                Expanded(child: BasicTextField(hintText: '195'))
              ],
            ),
            Row(
              children: [
                Expanded(child: Text('Enter Gender:')),
                Expanded(child: BasicTextField(hintText: 'M/F'))
              ],
            ),
          ],
        )
      ),
    );
  }
}

