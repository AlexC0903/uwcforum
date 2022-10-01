import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            title: const Text("Nice"),
          ),
          body: PageView(
            children: [
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.red,
              ),
              Container(color: Colors.blue),
            ],
          )),
    );
  }
}
