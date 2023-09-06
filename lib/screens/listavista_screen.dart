import 'package:flutter/material.dart';

class ListavistaScreen extends StatelessWidget {
  final opciones = const [
    'Nombre 1',
    'Otro Nombre',
    'Superman',
    'Spiderman',
    'Megaman'
  ];
  const ListavistaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista Componentes 1'),
          // elevation: 5,
          // backgroundColor: Colors.green,
        ),
        body: ListView.separated(
          itemCount: opciones.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(opciones[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.green,
            ),
            onTap: () {
              final game = opciones[index];
              print(game);
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
        ));
  }
}
