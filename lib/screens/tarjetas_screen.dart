import 'package:componentes/widgets/wingets.dart';
import 'package:flutter/material.dart';

class TarjetasScreen extends StatelessWidget {
  const TarjetasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tarjetas - Cards'),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: const [
              TarjetasCards(),
              SizedBox(height: 15),
              TarjetasImagenes(
                imagenurl:
                    'https://blog.logrocket.com/wp-content/uploads/2021/07/dependency-injection-vue-advantages-caveats.png',
                textoimagen: 'Este es la imagen de Vue 2',
              ),
              SizedBox(height: 15),
              TarjetasImagenes(
                  imagenurl:
                      'https://vuejsdevelopers.com/images/posts/vue_3_tutorial.png',
                  textoimagen: 'Este es la imagen de Vue 3')
            ]));
  }
}
