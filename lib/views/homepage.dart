import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // labeltext for user input
      home: Scaffold(
          body: Center(
        child: Column(
          children: [
            const Text('Enter IP Address'),
            const TextField(),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("ON"))
              ],
            )
          ],
        ),
      )),
    );
    // two buttons aligned horizontally
  }
}
