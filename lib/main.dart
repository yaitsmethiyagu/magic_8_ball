import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int ballimage = 1;
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
          title: Text('8 Ball answers', style: TextStyle(color: Colors.lightGreen.shade900),), backgroundColor: Colors.lightGreen),
      body: Column(
        children: [
          Expanded(
              child: TextButton(
            child: Image.asset('images/ball${ballimage}.png'),
            onPressed: () {
              setState(() {
                ballimage = Random().nextInt(5) + 1;
              });
              print("pressed");
            },
          ))
        ],
      ),
    ));
  }
}
