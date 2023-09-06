import 'package:flutter/material.dart';

class ListavistaScreenOriginal extends StatelessWidget {
  final opciones = const [
    'Nombre 1',
    'Otro Nombre',
    'Superman',
    'Spiderman',
    'Megaman'
  ];
  const ListavistaScreenOriginal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Componentes 2'),
      ),
      body: ListView(children: [
        ...opciones
            .map((juegos) => ListTile(
                  leading: const Icon(Icons.access_alarm_outlined),
                  title: Text(juegos),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ))
            .toList()
        // ListTile(
        //   leading: Icon(Icons.access_alarm_outlined),
        //   title: Text('Hola Mundo'),
        // )
      ]),
    );
  }
}
