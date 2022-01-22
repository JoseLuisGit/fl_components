import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerScreen> createState() =>
      _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  double _width = 50;
  double _height = 50;
  BorderRadius _borderRadius = BorderRadius.circular(20);
  Color _color = Colors.blueAccent;

  void changeContainer() {
    Random random = Random();
    _height = random.nextInt(300).toDouble() + 50;
    _width = random.nextInt(300).toDouble() + 50;
    _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    _color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          curve: Curves.easeInOutBack,
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
          height: _height,
          width: _width,
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => changeContainer(),
        child: const Icon(Icons.animation_outlined),
      ),
    );
  }
}
