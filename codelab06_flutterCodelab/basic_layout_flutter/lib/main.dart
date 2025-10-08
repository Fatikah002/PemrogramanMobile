import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: Image.asset('assets/pic1.jpeg')),
              Expanded(flex: 2, child: Image.asset('assets/pic2.jpeg')),
              Expanded(child: Image.asset('assets/pic3.jpg')),
            ],
          ),
        ),
      ),
    );
  }
}
