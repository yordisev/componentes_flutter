import 'dart:math';

import 'package:flutter/material.dart';

class AnimacionScreen extends StatefulWidget {
  const AnimacionScreen({Key? key}) : super(key: key);

  @override
  State<AnimacionScreen> createState() => _AnimacionScreenState();
}

class _AnimacionScreenState extends State<AnimacionScreen> {
  double _anchor = 50;
  double _altura = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderadius = BorderRadius.circular(10);

  void cambiartodo() {
    final randon = Random();
    _anchor = randon.nextInt(300).toDouble() + 70;
    _altura = randon.nextInt(300).toDouble() + 70;
    _color = Color.fromRGBO(
        randon.nextInt(255), randon.nextInt(255), randon.nextInt(255), 1);
    _borderadius = BorderRadius.circular(randon.nextInt(100).toDouble() + 10);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animaciones'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.bounceOut,
          width: _anchor,
          height: _altura,
          decoration: BoxDecoration(color: _color, borderRadius: _borderadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: cambiartodo,
        child: const Icon(
          Icons.play_arrow_rounded,
          size: 50,
        ),
      ),
    );
  }
}
