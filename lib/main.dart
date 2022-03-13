import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Ask me anything'),
          ),
        ),
        body: const SafeArea(
          child: _AppImage(),
        ),
      ),
    );
  }
}

class _AppImage extends StatefulWidget {
  const _AppImage({Key? key}) : super(key: key);

  @override
  State<_AppImage> createState() => _AppImageState();
}

class _AppImageState extends State<_AppImage> {
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: TextButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(0.0),
          ),
          onPressed: () {
            setState(() {
              number = Random().nextInt(4) + 1;
            });
          },
          child: Image.asset('images/ball$number.png'),
        ),
      ),
    );
  }
}
