import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen Fatikah'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Navy'),
              onPressed: () {
                final color = const Color.fromARGB(255, 2, 0, 37);
                Navigator.pop<Color>(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Tosca'),
              onPressed: () {
                final color = const Color.fromARGB(255, 192, 234, 240);
                Navigator.pop<Color>(context, color);
              },
            ),
            ElevatedButton(
              child: const Text('Pink'),
              onPressed: () {
                final color = const Color.fromARGB(255, 255, 184, 184);
                Navigator.pop<Color>(context, color);
              },
            ),
          ],
        ),
      ),
    );
  }
}
