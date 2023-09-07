import 'package:componentes/theme/app_tema.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double slider = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Slider(
            activeColor: AppTema.primary,
            min: 50,
            max: 400,
            divisions: 10,
            value: slider,
            onChanged: (value) {
              slider = value;
              setState(() {});
            },
          ),
          Image(
            image: const NetworkImage(
                'https://eltallerdehector.com/wp-content/uploads/2021/08/Stitch-png-sin-Fondo.png'),
            fit: BoxFit.contain,
            width: slider,
          ),
          const SizedBox(
            height: 100,
          )
        ]),
      ),
    );
  }
}
