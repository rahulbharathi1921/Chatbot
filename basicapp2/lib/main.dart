import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const ColorChangerApp());
}

class ColorChangerApp extends StatelessWidget {
  const ColorChangerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Changer App',
      home: const MyHomePage(title: 'Color Changer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _backgroundColor = Colors.white;

   final Random _random = Random();

  void _changeColor() {
    setState(() {
      _backgroundColor =
          Colors.primaries[_random.nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: ElevatedButton(
            onPressed: _changeColor,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: const Color.fromARGB(255, 255, 255, 255),
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
              textStyle: const TextStyle(fontSize: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            child: const Text('Change Color'),
          ),
        ),
      ),
    );
  }
}
